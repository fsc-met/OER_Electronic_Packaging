#!/usr/bin/env python3
"""Encrypt instructor-only Markdown blocks for a fully static mdBook site.

Workflow:
1. Validate <!-- INSTRUCTOR-ONLY-START/END --> blocks in website/src.
2. Render the prepared private source once with mdBook into a temporary folder.
3. Extract the rendered HTML corresponding to each protected block.
4. Encrypt each rendered HTML fragment with PBKDF2-HMAC-SHA256 + AES-256-GCM.
5. Replace the plaintext Markdown block in website/src with a static locked
   container containing only ciphertext and decryption parameters.
6. The normal public mdBook build then sees no plaintext instructor content.

The fixed passphrase is read from website/secret/instructor_access_key.txt and
is never written into website/src or website/book.
"""

from __future__ import annotations

import base64
import os
import re
import subprocess
import sys
import tempfile
from dataclasses import dataclass
from pathlib import Path

START = "<!-- INSTRUCTOR-ONLY-START -->"
END = "<!-- INSTRUCTOR-ONLY-END -->"
PBKDF2_ITERATIONS = 600_000
AAD = b"OpenEngineeringBooks instructor content v1"


class ProtectionError(RuntimeError):
    pass


@dataclass
class SourceBlock:
    start_line: int
    end_line: int
    markdown: str


def fail(message: str) -> "NoReturn":
    print(f"ERROR: {message}", file=sys.stderr)
    raise SystemExit(1)


def find_blocks(text: str, path: Path) -> list[SourceBlock]:
    lines = text.splitlines(keepends=True)
    blocks: list[SourceBlock] = []
    inside = False
    start_idx = -1
    content_start = -1

    for idx, line in enumerate(lines):
        stripped = line.strip()
        has_start = START in line
        has_end = END in line

        if has_start and stripped != START:
            raise ProtectionError(f"{path}:{idx + 1}: START marker must appear alone on its line")
        if has_end and stripped != END:
            raise ProtectionError(f"{path}:{idx + 1}: END marker must appear alone on its line")
        if has_start and has_end:
            raise ProtectionError(f"{path}:{idx + 1}: START and END markers cannot share one line")

        if has_start:
            if inside:
                raise ProtectionError(f"{path}:{idx + 1}: nested instructor-only START marker")
            inside = True
            start_idx = idx
            content_start = idx + 1
            continue

        if has_end:
            if not inside:
                raise ProtectionError(f"{path}:{idx + 1}: END marker without matching START")
            markdown = "".join(lines[content_start:idx])
            if not markdown.strip():
                raise ProtectionError(f"{path}:{start_idx + 1}: instructor-only block is empty")
            blocks.append(SourceBlock(start_idx, idx, markdown))
            inside = False
            start_idx = -1
            content_start = -1

    if inside:
        raise ProtectionError(f"{path}:{start_idx + 1}: unclosed instructor-only block")

    return blocks


def html_path_for_markdown(private_dir: Path, src_dir: Path, md_path: Path) -> Path:
    rel = md_path.relative_to(src_dir)
    if rel.name == "README.md":
        return private_dir / rel.parent / "index.html"
    return private_dir / rel.with_suffix(".html")


def extract_rendered_blocks(html: str, expected: int, html_path: Path) -> list[str]:
    pattern = re.compile(
        r"<!--\s*INSTRUCTOR-ONLY-START\s*-->(.*?)<!--\s*INSTRUCTOR-ONLY-END\s*-->",
        re.DOTALL,
    )
    blocks = [m.group(1).strip() for m in pattern.finditer(html)]
    if len(blocks) != expected:
        raise ProtectionError(
            f"{html_path}: expected {expected} rendered instructor block(s), found {len(blocks)}. "
            "The mdBook renderer must preserve the instructor marker comments."
        )
    if any(not block for block in blocks):
        raise ProtectionError(f"{html_path}: rendered instructor block is unexpectedly empty")
    return blocks


def b64url(data: bytes) -> str:
    return base64.urlsafe_b64encode(data).decode("ascii").rstrip("=")


def load_secret(secret_file: Path) -> str:
    if not secret_file.is_file():
        raise ProtectionError(f"instructor access key file is missing: {secret_file}")
    raw = secret_file.read_text(encoding="utf-8")
    secret = raw.rstrip("\r\n")
    if secret != secret.strip():
        raise ProtectionError("instructor access key may not start or end with spaces/tabs")
    if len(secret) < 16:
        raise ProtectionError("instructor access key must contain at least 16 characters")
    if "\n" in secret or "\r" in secret:
        raise ProtectionError("instructor access key must be a single line")
    return secret


def encrypt_html(html: str, secret: str) -> tuple[str, str, str]:
    try:
        from cryptography.hazmat.primitives import hashes
        from cryptography.hazmat.primitives.ciphers.aead import AESGCM
        from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
    except ImportError as exc:
        raise ProtectionError(
            "Python package 'cryptography' is required when instructor-only blocks are present. "
            "Install python3-cryptography (or the equivalent package for this system)."
        ) from exc

    salt = os.urandom(16)
    iv = os.urandom(12)
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=PBKDF2_ITERATIONS,
    )
    key = kdf.derive(secret.encode("utf-8"))
    ciphertext = AESGCM(key).encrypt(iv, html.encode("utf-8"), AAD)
    return b64url(salt), b64url(iv), b64url(ciphertext)


def locked_container(salt: str, iv: str, ciphertext: str) -> str:
    return f'''<div class="oer-instructor-protected"
  data-oer-version="1"
  data-oer-kdf="PBKDF2-SHA256"
  data-oer-iterations="{PBKDF2_ITERATIONS}"
  data-oer-salt="{salt}"
  data-oer-iv="{iv}"
  data-oer-ciphertext="{ciphertext}">
  <div class="oer-instructor-locked">
    <p><strong>Instructor access required.</strong></p>
    <p>This content is restricted to instructors.</p>
    <button type="button" class="oer-instructor-unlock-button">Enter access code</button>
    <noscript><p>JavaScript is required to unlock this content.</p></noscript>
  </div>
  <div class="oer-instructor-content" hidden></div>
</div>'''


def replace_blocks(text: str, path: Path, containers: list[str]) -> str:
    lines = text.splitlines(keepends=True)
    out: list[str] = []
    inside = False
    block_index = 0

    for idx, line in enumerate(lines):
        stripped = line.strip()
        if stripped == START:
            if inside:
                raise ProtectionError(f"{path}:{idx + 1}: nested START marker during replacement")
            inside = True
            if block_index >= len(containers):
                raise ProtectionError(f"{path}: internal block-count mismatch during replacement")
            out.append("\n" + containers[block_index] + "\n\n")
            block_index += 1
            continue
        if stripped == END:
            if not inside:
                raise ProtectionError(f"{path}:{idx + 1}: unexpected END marker during replacement")
            inside = False
            continue
        if not inside:
            out.append(line)

    if inside:
        raise ProtectionError(f"{path}: unclosed block during replacement")
    if block_index != len(containers):
        raise ProtectionError(f"{path}: internal block-count mismatch after replacement")
    return "".join(out)


def main() -> int:
    helper_dir = Path(__file__).resolve().parent
    website_dir = helper_dir.parent
    src_dir = website_dir / "src"
    summary = src_dir / "SUMMARY.md"
    secret_file = website_dir / "secret" / "instructor_access_key.txt"

    if not src_dir.is_dir():
        fail(f"staged source directory does not exist: {src_dir}")
    if not summary.is_file():
        fail(f"SUMMARY.md does not exist: {summary}; generate navigation before protection")

    pages: dict[Path, list[SourceBlock]] = {}
    try:
        for md_path in sorted(src_dir.rglob("*.md")):
            blocks = find_blocks(md_path.read_text(encoding="utf-8"), md_path)
            if blocks:
                pages[md_path] = blocks
    except (UnicodeDecodeError, ProtectionError) as exc:
        fail(str(exc))

    total_blocks = sum(len(v) for v in pages.values())
    if total_blocks == 0:
        print("No instructor-only Markdown blocks found; nothing to encrypt.")
        return 0

    try:
        secret = load_secret(secret_file)
    except ProtectionError as exc:
        fail(str(exc))

    if not shutil_which("mdbook"):
        fail("mdbook is not installed or is not in PATH")
    if not shutil_which("mdbook-katex"):
        fail("mdbook-katex is not installed or is not in PATH")

    print(f"Instructor-only pages found : {len(pages)}")
    print(f"Instructor-only blocks found: {total_blocks}")
    print("Rendering temporary private mdBook for protected HTML...")

    transformed: dict[Path, str] = {}

    try:
        with tempfile.TemporaryDirectory(prefix="epac-private-mdbook-") as tmp:
            private_dir = Path(tmp) / "book"
            cmd = ["mdbook", "build", "--dest-dir", str(private_dir), str(website_dir)]
            subprocess.run(cmd, check=True)

            for md_path, source_blocks in pages.items():
                html_path = html_path_for_markdown(private_dir, src_dir, md_path)
                if not html_path.is_file():
                    raise ProtectionError(f"private render did not produce expected page: {html_path}")

                rendered = extract_rendered_blocks(
                    html_path.read_text(encoding="utf-8"), len(source_blocks), html_path
                )

                containers: list[str] = []
                for html_fragment in rendered:
                    salt, iv, ciphertext = encrypt_html(html_fragment, secret)
                    containers.append(locked_container(salt, iv, ciphertext))

                original = md_path.read_text(encoding="utf-8")
                transformed[md_path] = replace_blocks(original, md_path, containers)

    except subprocess.CalledProcessError as exc:
        fail(f"temporary private mdBook render failed with exit code {exc.returncode}")
    except ProtectionError as exc:
        fail(str(exc))

    # Only mutate staged Markdown after every page has rendered and encrypted
    # successfully. Each file is written through a sibling temporary file.
    for md_path, new_text in transformed.items():
        tmp_path = md_path.with_name(md_path.name + ".instructor-protect.tmp")
        tmp_path.write_text(new_text, encoding="utf-8")
        tmp_path.replace(md_path)

    # Final staged-source safety checks.
    for md_path in sorted(src_dir.rglob("*.md")):
        text = md_path.read_text(encoding="utf-8")
        if START in text or END in text:
            fail(f"instructor marker remained after protection: {md_path}")
        if secret in text:
            fail(f"instructor access key leaked into staged Markdown: {md_path}")

    print("Instructor-only content protection completed successfully.")
    print("Plaintext protected content has been removed from website/src.")
    return 0


def shutil_which(command: str) -> str | None:
    # Local helper avoids importing shutil solely for which().
    import shutil

    return shutil.which(command)


if __name__ == "__main__":
    raise SystemExit(main())
