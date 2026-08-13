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

DEST="$(pwd -P)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

curl -fsSL "$TARBALL" | tar -xz -C "$TMP_DIR"

SRC="$TMP_DIR/Starter-Harness-${BRANCH}/Create"

if [ ! -d "$SRC" ]; then
  echo "Error: Create/ was not found in the downloaded harness." >&2
  exit 1
fi

shopt -s dotglob nullglob
PAYLOAD=("$SRC"/*)

if [ "${#PAYLOAD[@]}" -eq 0 ]; then
  echo "Error: Create/ is empty in the downloaded harness." >&2
  exit 1
fi

for SOURCE_ITEM in "${PAYLOAD[@]}"; do
  NAME="${SOURCE_ITEM##*/}"

  if [ -e "$DEST/$NAME" ] || [ -L "$DEST/$NAME" ]; then
    echo "Error: $NAME already exists in $DEST. Aborting to avoid overwriting." >&2
    exit 1
  fi
done

tar -C "$SRC" -cf - . | tar -C "$DEST" -xf -

echo "Installed the Create/ payload into $DEST"
