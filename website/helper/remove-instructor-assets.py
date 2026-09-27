#!/usr/bin/env python3
"""Remove explicitly listed instructor-only files/directories from website/src.

The exclusion list is stored at website/secret/instructor_assets.txt. Paths are
repository-root-relative and must be exact paths (no globbing). This keeps
instructor-only binary assets out of the static mdBook output.
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path, PurePosixPath


def fail(message: str) -> "NoReturn":
    print(f"ERROR: {message}", file=sys.stderr)
    raise SystemExit(1)


def load_entries(list_file: Path) -> list[str]:
    if not list_file.is_file():
        print("No instructor asset exclusion list found; nothing to remove.")
        return []

    entries: list[str] = []
    for lineno, raw in enumerate(list_file.read_text(encoding="utf-8").splitlines(), start=1):
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        if any(ch in line for ch in "*?[]"):
            fail(f"{list_file}:{lineno}: glob characters are not allowed; use an exact path")
        p = PurePosixPath(line)
        if p.is_absolute() or ".." in p.parts:
            fail(f"{list_file}:{lineno}: path must be repository-root-relative and may not contain '..': {line}")
        entries.append(line)
    return entries


def main() -> int:
    helper_dir = Path(__file__).resolve().parent
    website_dir = helper_dir.parent
    repo_root = website_dir.parent
    src_dir = website_dir / "src"
    list_file = website_dir / "secret" / "instructor_assets.txt"

    if not src_dir.is_dir():
        fail(f"staged source directory does not exist: {src_dir}")

    entries = load_entries(list_file)
    if not entries:
        return 0

    removed = 0
    for rel in entries:
        source_path = repo_root / Path(rel)
        staged_path = src_dir / Path(rel)

        if not source_path.exists():
            fail(f"listed instructor-only source path does not exist: {source_path}")
        if not staged_path.exists():
            fail(f"listed instructor-only path was not found in staged source: {staged_path}")

        print(f"Removing instructor-only asset: {rel}")
        if staged_path.is_dir():
            shutil.rmtree(staged_path)
        else:
            staged_path.unlink()
        removed += 1

    print(f"Instructor-only asset removal completed. Entries removed: {removed}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
