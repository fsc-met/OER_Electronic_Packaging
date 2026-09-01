#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
SRC_DIR="${1:-$WEBSITE_DIR/src}"
SUMMARY_FILE="$SRC_DIR/SUMMARY.md"

if [[ ! -d "$SRC_DIR" ]]; then
    echo "ERROR: Source directory does not exist:"
    echo "  $SRC_DIR"
    exit 1
fi

echo "Generating SUMMARY.md..."

chapter_count=0
page_count=0

{
    echo "# Summary"
    echo
    echo "[Introduction](README.md)"
    echo

    if [[ -f "$SRC_DIR/CREDITS.md" ]]; then
        echo "[Credits and Acknowledgments](CREDITS.md)"
        echo
    fi

    if [[ -f "$SRC_DIR/REVISION_HISTORY.md" ]]; then
        echo "[Revision History](REVISION_HISTORY.md)"
        echo
    fi

    echo "---"
    echo

    for chapter_dir in "$SRC_DIR"/[0-9][0-9]\ -\ *; do
        [[ -d "$chapter_dir" ]] || continue

        chapter_base="$(basename "$chapter_dir")"
        chapter_prefix="${chapter_base%% - *}"
        chapter_title="${chapter_base#* - }"
        chapter_number=$((10#$chapter_prefix))

        echo "# Chapter $chapter_number - $chapter_title"
        echo

        chapter_count=$((chapter_count + 1))

        while IFS= read -r -d '' page_file; do
            filename="$(basename "$page_file")"
            page_title="${filename%.md}"
            relative_path="$chapter_base/$filename"

            printf -- '- [%s](<%s>)\n' \
                "$page_title" \
                "$relative_path"

            page_count=$((page_count + 1))

        done < <(
            find "$chapter_dir" \
                -maxdepth 1 \
                -type f \
                -name '*.md' \
                -print0 |
            sort -z -V
        )

        echo
    done

    if [[ -f "$SRC_DIR/DISCLAIMER.md" || -f "$SRC_DIR/LICENSE.md" ]]; then
        echo "---"
        echo

        if [[ -f "$SRC_DIR/DISCLAIMER.md" ]]; then
            echo "[Disclaimer](DISCLAIMER.md)"
            echo
        fi

        if [[ -f "$SRC_DIR/LICENSE.md" ]]; then
            echo "[License](LICENSE.md)"
            echo
        fi
    fi

} > "$SUMMARY_FILE"

if [[ "$chapter_count" -eq 0 ]]; then
    echo "ERROR: No numbered chapter directories were found."
    rm -f "$SUMMARY_FILE"
    exit 1
fi

if [[ "$page_count" -eq 0 ]]; then
    echo "ERROR: No chapter Markdown files were found."
    rm -f "$SUMMARY_FILE"
    exit 1
fi

echo "SUMMARY.md generated successfully."
echo "  Chapters: $chapter_count"
echo "  Pages   : $page_count"
echo "  File    : $SUMMARY_FILE"
