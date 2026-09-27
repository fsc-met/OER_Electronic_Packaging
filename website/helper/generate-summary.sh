#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"
SRC_DIR="${1:-$WEBSITE_DIR/src}"
SUMMARY_FILE="$SRC_DIR/SUMMARY.md"

# Validate the source directory before trying to create a temporary file in it.
if [[ ! -d "$SRC_DIR" ]]; then
    echo "ERROR: Source directory does not exist:" >&2
    echo "  $SRC_DIR" >&2
    exit 1
fi

# Build SUMMARY.md atomically so a failed generation does not overwrite the
# last valid summary.
TMP_SUMMARY="$(mktemp "$SRC_DIR/.SUMMARY.md.tmp.XXXXXX")"
trap 'rm -f "$TMP_SUMMARY"' EXIT

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

        # Required manually written chapter landing page:
        #   1.0 - Chapter Overview.md
        #   2.0 - Chapter Overview.md
        #   ...
        chapter_page_name="$chapter_number.0 - Chapter Overview.md"
        chapter_page="$chapter_dir/$chapter_page_name"
        legacy_chapter_page="$chapter_dir/chapter.md"

        # EPAC contains empty placeholder Markdown files for future chapters.
        # Only non-empty, correctly numbered section files (N.1, N.2, ...)
        # count as public-ready section content. The N.0 overview is handled
        # separately as the chapter's foldable parent page.
        page_files=()

        while IFS= read -r -d '' page_file; do
            filename="$(basename "$page_file")"

            # The chapter overview is not a normal numbered section.
            if [[ "$filename" == "$chapter_page_name" ]]; then
                continue
            fi

            # Empty/whitespace-only placeholders are ignored.
            if ! grep -q '[^[:space:]]' "$page_file"; then
                continue
            fi

            # Ignore unrelated non-numbered Markdown files at chapter root.
            # If a non-empty file starts with this chapter number, however,
            # enforce the standard "N.section - Title.md" naming convention
            # instead of silently omitting a malformed public section.
            if [[ "$filename" != "$chapter_number."* ]]; then
                continue
            fi

            section_id="${filename%% - *}"

            if [[ ! "$section_id" =~ ^${chapter_number}\.[1-9][0-9]*$ ]]; then
                echo "ERROR: Invalid numbered Markdown filename in Chapter $chapter_number:" >&2
                echo "  $page_file" >&2
                echo "Expected normal sections such as:" >&2
                echo "  $chapter_number.1 - Section Title.md" >&2
                echo "and the chapter landing page exactly as:" >&2
                echo "  $chapter_page_name" >&2
                exit 1
            fi

            page_files+=("$page_file")

        done < <(
            find "$chapter_dir" \
                -maxdepth 1 \
                -type f \
                -name '*.md' \
                -print0 |
            sort -z -V
        )

        # Completely unfinished chapters remain hidden. A chapter overview by
        # itself does not make the chapter public-ready.
        if [[ "${#page_files[@]}" -eq 0 ]]; then
            continue
        fi

        # Catch the former landing-page convention only for a chapter that is
        # otherwise ready to publish.
        if [[ -f "$legacy_chapter_page" ]]; then
            echo "ERROR: Legacy chapter landing page found:" >&2
            echo "  $legacy_chapter_page" >&2
            echo "Rename/remove it and use the required filename:" >&2
            echo "  $chapter_page_name" >&2
            exit 1
        fi

        # Once a chapter has public-ready sections, require the exact manually
        # written N.0 chapter overview used as the foldable parent in mdBook.
        if [[ ! -f "$chapter_page" ]]; then
            echo "ERROR: Chapter $chapter_number has public-ready sections but is missing:" >&2
            echo "  $chapter_page" >&2
            exit 1
        fi

        if ! grep -q '[^[:space:]]' "$chapter_page"; then
            echo "ERROR: Chapter $chapter_number has public-ready sections but its chapter overview is empty:" >&2
            echo "  $chapter_page" >&2
            exit 1
        fi

        chapter_relative_path="$chapter_base/$chapter_page_name"

        # A real linked parent item is required for mdBook's native folding.
        printf -- '- [Chapter %s - %s](<%s>)\n' \
            "$chapter_number" \
            "$chapter_title" \
            "$chapter_relative_path"

        chapter_count=$((chapter_count + 1))

        # Numbered section pages are nested under the chapter overview.
        for page_file in "${page_files[@]}"; do
            filename="$(basename "$page_file")"
            page_title="${filename%.md}"
            relative_path="$chapter_base/$filename"

            printf -- '    - [%s](<%s>)\n' \
                "$page_title" \
                "$relative_path"

            page_count=$((page_count + 1))
        done

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

} > "$TMP_SUMMARY"

if [[ "$chapter_count" -eq 0 ]]; then
    echo "ERROR: No public-ready numbered chapters were found." >&2
    exit 1
fi

if [[ "$page_count" -eq 0 ]]; then
    echo "ERROR: No non-empty numbered chapter section Markdown files were found." >&2
    exit 1
fi

mv "$TMP_SUMMARY" "$SUMMARY_FILE"
trap - EXIT

echo "SUMMARY.md generated successfully."
echo "  Chapters: $chapter_count"
echo "  Sections: $page_count"
echo "  File    : $SUMMARY_FILE"
