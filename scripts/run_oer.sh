#!/usr/bin/env bash
set -e

# nixB OER Codelab Runner
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="${NIXB_REPO_ROOT:-$(cd "$SCRIPT_DIR/.." && pwd)}"
OER_SRC="$REPO_ROOT/oer"
DATA_DIR="$REPO_ROOT/.data"
CODELAB_OUT="$DATA_DIR/oer-build/nixb-reproducible-environments"

mkdir -p "$DATA_DIR/oer-build"
cd "$DATA_DIR/oer-build"

echo "📘 [nixB OER] Compiling Codelab HTML..."
if command -v claat >/dev/null 2>&1; then
    claat export "$OER_SRC/nixb-codelab.md"
elif [ -f "$HOME/go/bin/claat" ]; then
    "$HOME/go/bin/claat" export "$OER_SRC/nixb-codelab.md"
else
    echo "Building claat from source..."
    go install github.com/googlecodelabs/tools/claat@latest
    "$HOME/go/bin/claat" export "$OER_SRC/nixb-codelab.md"
fi

echo "🌐 [nixB OER] Starting Caddy Server on http://localhost:8080 ..."
exec caddy file-server --root "$CODELAB_OUT" --listen :8080
