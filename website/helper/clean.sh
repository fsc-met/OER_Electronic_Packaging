#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

SRC_DIR="$WEBSITE_DIR/src"
BOOK_DIR="$WEBSITE_DIR/book"

echo
echo "============================================================"
echo " MET406 Website Clean"
echo "============================================================"
echo
echo "Website directory:"
echo "  $WEBSITE_DIR"
echo

remove_generated_dir() {
    local target="$1"
    local name="$2"

    # Safety check: only allow deletion of direct generated directories
    # inside the website directory.
    if [[ "$target" != "$WEBSITE_DIR/$name" ]]; then
        echo "ERROR: Refusing to remove unexpected path:"
        echo "  $target"
        exit 1
    fi

    if [[ -e "$target" ]]; then
        echo "Removing:"
        echo "  $target"
        rm -rf -- "$target"
    else
        echo "Already clean:"
        echo "  $target"
    fi
}

remove_generated_dir "$SRC_DIR" "src"
remove_generated_dir "$BOOK_DIR" "book"

echo
echo "============================================================"
echo " WEBSITE CLEAN COMPLETED SUCCESSFULLY"
echo "============================================================"
echo
echo "Removed generated directories:"
echo "  website/src"
echo "  website/book"
echo
