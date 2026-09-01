#!/usr/bin/env bash

set -euo pipefail

export PATH="/root/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

REPO_DIR="/srv/oer/epac"
BRANCH="main"
PUBLISH_SCRIPT="/srv/oer/bin/publish-epac.sh"

cd "$REPO_DIR"

# Do not automate over local modifications.
if [[ -n "$(git status --porcelain)" ]]; then
    echo "ERROR: Repository contains local changes. Automatic publishing stopped."
    git status --short
    exit 1
fi

git fetch origin "$BRANCH" --quiet

LOCAL_COMMIT="$(git rev-parse HEAD)"
REMOTE_COMMIT="$(git rev-parse "origin/$BRANCH")"

if [[ "$LOCAL_COMMIT" == "$REMOTE_COMMIT" ]]; then
    echo "No new commit. Nothing to publish."
    exit 0
fi

echo "New commit detected."
echo "  Local : $LOCAL_COMMIT"
echo "  Remote: $REMOTE_COMMIT"
echo

exec "$PUBLISH_SCRIPT"
