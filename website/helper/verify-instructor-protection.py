#!/usr/bin/env python3
"""Post-build QA for static instructor-only protection."""

from __future__ import annotations

import sys
from pathlib import Path, PurePosixPath

START = "<!-- INSTRUCTOR-ONLY-START -->"
END = "<!-- INSTRUCTOR-ONLY-END -->"
CONTAINER = 'class="oer-instructor-protected"'
TEXT_SUFFIXES = {".html", ".js", ".css", ".json", ".md", ".txt", ".xml", ".svg", ".toml"}


def fail(message: str) -> "NoReturn":
    print(f"ERROR: {message}", file=sys.stderr)
    raise SystemExit(1)


def read_secret(path: Path) -> str | None:
    if not path.is_file():
        return None
    return path.read_text(encoding="utf-8").rstrip("\r\n")


def count_source_blocks(repo_root: Path) -> int:
    count = 0
    for chapter_dir in sorted(repo_root.glob("[0-9][0-9] - *")):
        if not chapter_dir.is_dir():
            continue
        for md_path in chapter_dir.rglob("*.md"):
            text = md_path.read_text(encoding="utf-8")
            starts = text.count(START)
            ends = text.count(END)
            if starts != ends:
                fail(f"unbalanced instructor markers in source file: {md_path}")
            count += starts
    return count


def load_asset_entries(path: Path) -> list[str]:
    if not path.is_file():
        return []
    entries: list[str] = []
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        p = PurePosixPath(line)
        if p.is_absolute() or ".." in p.parts:
            fail(f"invalid instructor asset path in {path}: {line}")
        entries.append(line)
    return entries


def scan_text_tree(root: Path, secret: str | None) -> tuple[int, list[str]]:
    container_count = 0
    errors: list[str] = []
    if not root.exists():
        errors.append(f"missing directory: {root}")
        return 0, errors

    for path in root.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in TEXT_SUFFIXES:
            continue
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        if START in text or END in text:
            errors.append(f"raw instructor marker found: {path}")
        if secret and secret in text:
            errors.append(f"instructor access key found in public/generated text: {path}")
        container_count += text.count(CONTAINER)
    return container_count, errors


def main() -> int:
    helper_dir = Path(__file__).resolve().parent
    website_dir = helper_dir.parent
    repo_root = website_dir.parent
    src_dir = website_dir / "src"
    book_dir = website_dir / "book"
    secret_dir = website_dir / "secret"
    secret = read_secret(secret_dir / "instructor_access_key.txt")
    source_blocks = count_source_blocks(repo_root)

    src_count, src_errors = scan_text_tree(src_dir, secret)
    book_count, book_errors = scan_text_tree(book_dir, secret)
    errors = src_errors + book_errors

    if source_blocks > 0:
        if src_count != source_blocks:
            errors.append(
                f"staged protected-container count mismatch: source blocks={source_blocks}, staged containers={src_count}"
            )
        if book_count < source_blocks:
            errors.append(
                f"built protected-container count is too small: source blocks={source_blocks}, built containers={book_count}"
            )

    if (book_dir / "secret").exists() or (src_dir / "secret").exists():
        errors.append("website/secret was copied into staged or built public content")

    for rel in load_asset_entries(secret_dir / "instructor_assets.txt"):
        if (src_dir / Path(rel)).exists():
            errors.append(f"instructor-only asset remains in staged source: {rel}")
        if (book_dir / Path(rel)).exists():
            errors.append(f"instructor-only asset remains in built site: {rel}")

    if errors:
        for error in errors:
            print(f"ERROR: {error}", file=sys.stderr)
        return 1

    print("Instructor-protection QA passed.")
    print(f"  Source protected blocks : {source_blocks}")
    print(f"  Staged locked containers: {src_count}")
    print(f"  Built locked containers : {book_count}")
    print("  Access key leakage      : none detected")
    print("  Instructor asset leakage: none detected")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
