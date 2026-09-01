#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"
HELPER_DIR="$SCRIPT_DIR/helper"

echo
echo "============================================================"
echo " MET406 Electronic Packaging Applications Website Build"
echo "============================================================"
echo
echo "Repository : $REPO_ROOT"
echo "Website    : $SCRIPT_DIR"
echo "Helpers    : $HELPER_DIR"
echo

# ------------------------------------------------------------
# Check required helper scripts
# ------------------------------------------------------------

required_scripts=(
    "clean.sh"
    "stage-source.sh"
    "prepare-source.sh"
    "generate-summary.sh"
    "build.sh"
)

if [[ ! -d "$HELPER_DIR" ]]; then
    echo "ERROR: Helper directory is missing:"
    echo "  $HELPER_DIR"
    exit 1
fi

for script in "${required_scripts[@]}"; do
    if [[ ! -f "$HELPER_DIR/$script" ]]; then
        echo "ERROR: Required helper script is missing:"
        echo "  $HELPER_DIR/$script"
        exit 1
    fi

    if [[ ! -x "$HELPER_DIR/$script" ]]; then
        echo "ERROR: Required helper script is not executable:"
        echo "  $HELPER_DIR/$script"
        echo
        echo "Run:"
        echo "  chmod +x \"$HELPER_DIR/$script\""
        exit 1
    fi
done

# ------------------------------------------------------------
# Step 1 - Clean previous generated files
# ------------------------------------------------------------

echo "------------------------------------------------------------"
echo " STEP 1/5 - Cleaning previous website build"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/clean.sh"

# ------------------------------------------------------------
# Step 2 - Stage source
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 2/5 - Staging source files"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/stage-source.sh"

# ------------------------------------------------------------
# Step 3 - Prepare source
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 3/5 - Preparing Markdown"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/prepare-source.sh"

# ------------------------------------------------------------
# Step 4 - Generate navigation
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 4/5 - Generating SUMMARY.md"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/generate-summary.sh"

# ------------------------------------------------------------
# Step 5 - Build website
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 5/5 - Building mdBook"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/build.sh"

# ------------------------------------------------------------
# Complete
# ------------------------------------------------------------

echo
echo "============================================================"
echo " WEBSITE BUILD COMPLETED SUCCESSFULLY"
echo "============================================================"
echo
echo "Generated website:"
echo "  $SCRIPT_DIR/book"
echo
