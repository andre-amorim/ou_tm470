#!/usr/bin/env bash

set -e

echo "🔄 Starting synchronization..."

echo "1/3: Pulling latest changes from Git..."
git pull --rebase

echo "2/3: Verifying Nix environment..."
# Running nix develop explicitly to ensure the flake environment is built
nix develop --command echo "Nix environment ready."

echo "3/3: Syncing Python dependencies with uv..."
# If run inside direnv it might pick up uv implicitly, but to be sure we can run it via nix develop
nix develop --command uv sync

echo "✅ Synchronization complete! You are ready to work."
