#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing XNU build dependencies..."

DEPS_DIR="kernel/deps"
mkdir -p "$DEPS_DIR"

repos=(
    "libdispatch"
    "dtrace"
    "AvailabilityVersions"
    "Libsystem"
)

for repo in "${repos[@]}"; do
    if [ ! -d "$DEPS_DIR/$repo" ]; then
        echo "  Cloning $repo..."
        git clone --depth=1 \
            "https://github.com/apple-oss-distributions/$repo.git" \
            "$DEPS_DIR/$repo"
    else
        echo "  $repo already exists, skipping"
    fi
done

echo "==> Done!"
