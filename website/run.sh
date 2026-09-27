#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "$SCRIPT_DIR/.." && pwd)"
HELPER_DIR="$SCRIPT_DIR/helper"

echo
echo "============================================================"
echo " EPAC Website Build"
echo "============================================================"
echo
echo "Repository : $REPO_ROOT"
echo "Website    : $SCRIPT_DIR"
echo "Helpers    : $HELPER_DIR"
echo

# ------------------------------------------------------------
# Select Python interpreter
# ------------------------------------------------------------
#
# Priority:
#   1. PYTHON_BIN explicitly supplied by the user/server
#   2. Python from the active Conda environment
#   3. python3 found on PATH
#   4. python found on PATH
#
# This avoids a common macOS issue where `python3` points to a
# Homebrew installation while the active Conda environment uses
# a different Python interpreter.

resolve_python() {
    local candidate=""

    if [[ -n "${PYTHON_BIN:-}" ]]; then
        candidate="$PYTHON_BIN"

        if [[ "$candidate" == */* ]]; then
            if [[ ! -x "$candidate" ]]; then
                echo "ERROR: PYTHON_BIN is not an executable file:" >&2
                echo "  $candidate" >&2
                return 1
            fi
            printf '%s\n' "$candidate"
            return 0
        fi

        if command -v "$candidate" >/dev/null 2>&1; then
            command -v "$candidate"
            return 0
        fi

        echo "ERROR: PYTHON_BIN command was not found:" >&2
        echo "  $candidate" >&2
        return 1
    fi

    if [[ -n "${CONDA_PREFIX:-}" && -x "$CONDA_PREFIX/bin/python" ]]; then
        printf '%s\n' "$CONDA_PREFIX/bin/python"
        return 0
    fi

    if command -v python3 >/dev/null 2>&1; then
        command -v python3
        return 0
    fi

    if command -v python >/dev/null 2>&1; then
        command -v python
        return 0
    fi

    echo "ERROR: Python is required to build this website, but no Python interpreter was found." >&2
    return 1
}

PYTHON_BIN="$(resolve_python)"

# Verify that the selected interpreter provides the cryptography feature
# required by the static instructor-content protection helpers.
if ! CRYPTOGRAPHY_VERSION="$(
    "$PYTHON_BIN" -c \
        'import cryptography; from cryptography.hazmat.primitives.ciphers.aead import AESGCM; print(cryptography.__version__)' \
        2>/dev/null
)"; then
    echo "ERROR: The selected Python interpreter does not provide the required" >&2
    echo "       'cryptography' package with AES-GCM support." >&2
    echo >&2
    echo "Python:" >&2
    echo "  $PYTHON_BIN" >&2
    echo >&2
    echo "Install cryptography into this Python environment and try again." >&2
    exit 1
fi

echo "Python     : $PYTHON_BIN"
echo "Crypto     : cryptography $CRYPTOGRAPHY_VERSION"
echo

# ------------------------------------------------------------
# Check required helper scripts
# ------------------------------------------------------------

required_shell_scripts=(
    "clean.sh"
    "stage-source.sh"
    "prepare-source.sh"
    "generate-summary.sh"
    "build.sh"
)

required_python_helpers=(
    "remove-instructor-assets.py"
    "protect-instructor-content.py"
    "verify-instructor-protection.py"
)

if [[ ! -d "$HELPER_DIR" ]]; then
    echo "ERROR: Helper directory is missing:"
    echo "  $HELPER_DIR"
    exit 1
fi

for script in "${required_shell_scripts[@]}"; do
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

for script in "${required_python_helpers[@]}"; do
    if [[ ! -f "$HELPER_DIR/$script" ]]; then
        echo "ERROR: Required Python helper is missing:"
        echo "  $HELPER_DIR/$script"
        exit 1
    fi

    if [[ ! -r "$HELPER_DIR/$script" ]]; then
        echo "ERROR: Required Python helper is not readable:"
        echo "  $HELPER_DIR/$script"
        exit 1
    fi
done

# ------------------------------------------------------------
# Step 1 - Clean previous generated files
# ------------------------------------------------------------

echo "------------------------------------------------------------"
echo " STEP 1/8 - Cleaning previous website build"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/clean.sh"

# ------------------------------------------------------------
# Step 2 - Stage source
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 2/8 - Staging source files"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/stage-source.sh"

# ------------------------------------------------------------
# Step 3 - Remove instructor-only binary/assets from public staging
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 3/8 - Removing instructor-only assets"
echo "------------------------------------------------------------"
echo

"$PYTHON_BIN" "$HELPER_DIR/remove-instructor-assets.py"

# ------------------------------------------------------------
# Step 4 - Prepare source
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 4/8 - Preparing Markdown"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/prepare-source.sh"

# ------------------------------------------------------------
# Step 5 - Generate navigation
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 5/8 - Generating SUMMARY.md"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/generate-summary.sh"

# ------------------------------------------------------------
# Step 6 - Encrypt instructor-only Markdown blocks
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 6/8 - Protecting instructor-only content"
echo "------------------------------------------------------------"
echo

"$PYTHON_BIN" "$HELPER_DIR/protect-instructor-content.py"

# ------------------------------------------------------------
# Step 7 - Build website
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 7/8 - Building mdBook"
echo "------------------------------------------------------------"
echo

"$HELPER_DIR/build.sh"

# ------------------------------------------------------------
# Step 8 - Verify no instructor-only content/key/assets leaked
# ------------------------------------------------------------

echo
echo "------------------------------------------------------------"
echo " STEP 8/8 - Verifying instructor-content protection"
echo "------------------------------------------------------------"
echo

"$PYTHON_BIN" "$HELPER_DIR/verify-instructor-protection.py"

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
