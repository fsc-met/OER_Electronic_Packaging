#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd -- "$WEBSITE_DIR/.." && pwd)"

SRC_DIR="$WEBSITE_DIR/src"

if [[ ! -f "$REPO_ROOT/README.md" ]]; then
    echo "ERROR: Repository README.md was not found."
    exit 1
fi

echo "Removing previous staging source..."

rm -rf "$SRC_DIR"
mkdir -p "$SRC_DIR"

echo "Copying public root files..."

cp "$REPO_ROOT/README.md" "$SRC_DIR/README.md"

if [[ -f "$REPO_ROOT/CREDITS.md" ]]; then
    cp "$REPO_ROOT/CREDITS.md" "$SRC_DIR/CREDITS.md"
fi

if [[ -f "$REPO_ROOT/REVISION_HISTORY.md" ]]; then
    cp "$REPO_ROOT/REVISION_HISTORY.md" "$SRC_DIR/REVISION_HISTORY.md"
fi

if [[ -f "$REPO_ROOT/LICENSE" ]]; then
    cp "$REPO_ROOT/LICENSE" "$SRC_DIR/LICENSE"
fi

if [[ -f "$REPO_ROOT/LICENSE.md" ]]; then
    cp "$REPO_ROOT/LICENSE.md" "$SRC_DIR/LICENSE.md"
fi

if [[ -f "$REPO_ROOT/DISCLAIMER.md" ]]; then
    cp "$REPO_ROOT/DISCLAIMER.md" "$SRC_DIR/DISCLAIMER.md"
fi

echo "Copying numbered chapters..."

chapter_count=0

for chapter_dir in "$REPO_ROOT"/[0-9][0-9]\ -\ *; do
    [[ -d "$chapter_dir" ]] || continue

    chapter_name="$(basename "$chapter_dir")"

    echo "  $chapter_name"

    cp -a "$chapter_dir" "$SRC_DIR/"

    chapter_count=$((chapter_count + 1))
done

if [[ "$chapter_count" -eq 0 ]]; then
    echo "ERROR: No numbered chapter directories were found."
    exit 1
fi

echo
echo "Source staging completed."
echo "  Chapters copied: $chapter_count"
echo "  Staging path : $SRC_DIR"
