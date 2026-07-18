#!/usr/bin/env bash
# Fetches CLAUDE.md and Docs/ from the Starter-Harness repo's Create/ folder
# and drops them, flattened, into the current directory.
#
# Usage (run inside a new project's root):
#   curl -fsSL https://raw.githubusercontent.com/PranavSingla101/Starter-Harness/main/install.sh | bash

set -euo pipefail

REPO="PranavSingla101/Starter-Harness"
BRANCH="main"
TARBALL="https://github.com/${REPO}/archive/refs/heads/${BRANCH}.tar.gz"

if [ -e "CLAUDE.md" ] || [ -e "Docs" ] || [ -e ".agents" ]; then
  echo "Error: CLAUDE.md, Docs/, or .agents/ already exists in $(pwd). Aborting to avoid overwriting." >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

curl -fsSL "$TARBALL" | tar -xz -C "$TMP_DIR"

SRC="$TMP_DIR/Starter-Harness-${BRANCH}/Create"
cp "$SRC/CLAUDE.md" ./CLAUDE.md
cp -R "$SRC/Docs" ./Docs
cp -R "$SRC/.agents" ./.agents
mkdir -p ./Docs/Feature-specs ./Docs/Screenshots

echo "Installed CLAUDE.md, Docs/, and .agents/ into $(pwd)"
