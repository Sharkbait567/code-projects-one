#!/bin/bash
# Usage: ./push_chart.sh path/to/chart.html stem-vault
# Copies a chart HTML file into charts/<category>/, commits, and pushes.
set -euo pipefail

FILE="$1"
CATEGORY="$2"
FILENAME="$(basename "$FILE")"

REPO_ROOT="$(git rev-parse --show-toplevel)"
DEST_DIR="$REPO_ROOT/charts/$CATEGORY"

mkdir -p "$DEST_DIR"
cp "$FILE" "$DEST_DIR/$FILENAME"

git -C "$REPO_ROOT" add "charts/$CATEGORY/$FILENAME" "charts/index.html"
git -C "$REPO_ROOT" commit -m "feat: add $FILENAME to $CATEGORY"
git -C "$REPO_ROOT" push

echo "Published: https://sharkbait567.github.io/code-projects-one/charts/$CATEGORY/$FILENAME"
