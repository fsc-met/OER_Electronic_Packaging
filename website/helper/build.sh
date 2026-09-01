#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

SRC_DIR="$WEBSITE_DIR/src"
BOOK_DIR="$WEBSITE_DIR/book"

if ! command -v mdbook >/dev/null 2>&1; then
    echo "ERROR: mdbook is not installed or is not in PATH."
    exit 1
fi

if ! command -v mdbook-katex >/dev/null 2>&1; then
    echo "ERROR: mdbook-katex is not installed or is not in PATH."
    exit 1
fi

if [[ ! -f "$WEBSITE_DIR/book.toml" ]]; then
    echo "ERROR: book.toml was not found."
    exit 1
fi

if [[ ! -f "$SRC_DIR/SUMMARY.md" ]]; then
    echo "ERROR: src/SUMMARY.md was not found."
    echo "Run ./run.sh instead of build.sh directly."
    exit 1
fi

echo "Build tools:"
echo "  $(mdbook --version)"
echo "  $(mdbook-katex --version)"
echo

echo "Removing previous generated website..."

rm -rf "$BOOK_DIR"

echo "Building mdBook..."
echo

mdbook build "$WEBSITE_DIR"

if [[ ! -f "$BOOK_DIR/index.html" ]]; then
    echo
    echo "ERROR: Build finished but index.html was not generated."
    exit 1
fi

echo
echo "mdBook build completed."
echo "  Output: $BOOK_DIR"
