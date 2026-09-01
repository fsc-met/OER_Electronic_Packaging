#!/usr/bin/env bash

set -euo pipefail

BOOK_DIR="/srv/oer/epac/website/book"
DESTINATION="oer-web-deploy:/var/www/openengineeringbooks/epac/"
STATE_DIR="/srv/oer/state"
LOCK_DIR="$STATE_DIR/epac-deploy.lock"
LOCK_HELD=false

cleanup() {
    local exit_code=$?

    trap - EXIT INT TERM
    set +e

    if [[ "$LOCK_HELD" == true && -d "$LOCK_DIR" ]]; then
        rmdir -- "$LOCK_DIR" >/dev/null 2>&1
    fi

    exit "$exit_code"
}

trap cleanup EXIT INT TERM

echo "========================================"
echo "Deploy Electronic Packaging Website"
echo "========================================"
echo

if ! command -v rsync >/dev/null 2>&1; then
    echo "ERROR: rsync is not installed."
    exit 1
fi

if [[ ! -d "$BOOK_DIR" ]]; then
    echo "ERROR: Generated book directory does not exist:"
    echo "  $BOOK_DIR"
    exit 1
fi

if [[ ! -f "$BOOK_DIR/index.html" ]]; then
    echo "ERROR: Generated book does not contain index.html."
    echo "Run the book build before deploying."
    exit 1
fi

echo "Source:"
echo "  $BOOK_DIR/"
echo
echo "Destination:"
echo "  $DESTINATION"
echo

mkdir -p -- "$STATE_DIR"

if ! mkdir -- "$LOCK_DIR" 2>/dev/null; then
    echo "ERROR: Another EPAC deployment may already be running."
    echo "If it is not, inspect and remove the stale lock directory:"
    echo "  $LOCK_DIR"
    exit 1
fi
LOCK_HELD=true

echo "Deploying..."

rsync -av --delete \
    "$BOOK_DIR/" \
    "$DESTINATION"

echo
echo "Verifying deployed index..."

ssh oer-web-deploy \
    'test -f /var/www/openengineeringbooks/epac/index.html'

echo
echo "Deployment completed successfully."
echo
echo "Public URL:"
echo "  https://openengineeringbooks.org/epac/"
