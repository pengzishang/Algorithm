#!/usr/bin/env bash
set -euo pipefail

# Detect SwiftFormat
if ! command -v swiftformat >/dev/null 2>&1; then
  echo "SwiftFormat (swiftformat) is not installed." >&2
  echo "Install with Homebrew:" >&2
  echo "  brew install swiftformat" >&2
  exit 1
fi

# Go to repo root
SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT"

# Run SwiftFormat across the whole repo with config if present
if [[ -f .swiftformat ]]; then
  echo "Running SwiftFormat with .swiftformat config..."
  swiftformat . --config .swiftformat
else
  echo "Running SwiftFormat with default settings..."
  swiftformat .
fi

echo "Formatting complete."
