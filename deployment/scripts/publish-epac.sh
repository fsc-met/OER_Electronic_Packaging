#!/usr/bin/env bash

set -euo pipefail

export PATH="/root/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

REPO_DIR="/srv/oer/epac"
BRANCH="main"
DEPLOY_SCRIPT="/srv/oer/bin/deploy-epac.sh"

echo "========================================"
echo "Publish Electronic Packaging Website"
echo "========================================"
echo

if [[ ! -d "$REPO_DIR/.git" ]]; then
    echo "ERROR: Git repository not found:"
    echo "  $REPO_DIR"
    exit 1
fi

if [[ ! -x "$REPO_DIR/website/run.sh" ]]; then
    echo "ERROR: Website build script is missing or not executable:"
    echo "  $REPO_DIR/website/run.sh"
    exit 1
fi

if [[ ! -x "$DEPLOY_SCRIPT" ]]; then
    echo "ERROR: Deployment script is missing or not executable:"
    echo "  $DEPLOY_SCRIPT"
    exit 1
fi

cd "$REPO_DIR"

echo "Step 1/3 - Updating repository..."
echo

if [[ -n "$(git status --porcelain)" ]]; then
    echo "ERROR: Repository contains local changes."
    echo "Publishing has been stopped to avoid overwriting them."
    echo
    git status --short
    exit 1
fi

CURRENT_BRANCH="$(git branch --show-current)"

if [[ "$CURRENT_BRANCH" != "$BRANCH" ]]; then
    echo "ERROR: Expected branch '$BRANCH', but current branch is:"
    echo "  $CURRENT_BRANCH"
    exit 1
fi

git fetch origin "$BRANCH"
git merge --ff-only "origin/$BRANCH"

COMMIT="$(git rev-parse --short HEAD)"

echo
echo "Repository ready at commit:"
echo "  $COMMIT"
echo

echo "Step 2/3 - Building website..."
echo

"$REPO_DIR/website/run.sh"

echo
echo "Step 3/3 - Deploying website..."
echo

"$DEPLOY_SCRIPT"

echo
echo "========================================"
echo "Publishing completed successfully."
echo "========================================"
echo
echo "Commit:"
echo "  $COMMIT"
echo
echo "Public URL:"
echo "  https://openengineeringbooks.org/epac/"
