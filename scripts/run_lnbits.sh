#!/usr/bin/env bash
set -e

REPO_ROOT="${NIXB_REPO_ROOT:-$PWD}"
DATA_DIR="$REPO_ROOT/.data"
LNBITS_DATA_DIR="$DATA_DIR/lnbits"

mkdir -p "$LNBITS_DATA_DIR"

# Stage extensions inside data folder for LNbits discoverability
mkdir -p "$LNBITS_DATA_DIR/extensions"
rm -rf "$LNBITS_DATA_DIR/extensions/scrum"
cp -r "$REPO_ROOT/lab/extensions/scrum" "$LNBITS_DATA_DIR/extensions/"

# Stage static assets and templates required by LNbits runtime
LNBITS_STORE_PATH=$(nix eval --raw github:lnbits/lnbits/v1.5.4#packages.aarch64-linux.default.outPath 2>/dev/null || nix build github:lnbits/lnbits/v1.5.4 --no-link --print-out-paths)
mkdir -p "$DATA_DIR/lnbits-runtime/lnbits"
if [ ! -d "$DATA_DIR/lnbits-runtime/lnbits/static" ] && [ -d "$LNBITS_STORE_PATH/lib/python3.12/site-packages/lnbits/static" ]; then
    cp -r "$LNBITS_STORE_PATH/lib/python3.12/site-packages/lnbits/static" "$DATA_DIR/lnbits-runtime/lnbits/"
fi
if [ ! -d "$DATA_DIR/lnbits-runtime/lnbits/templates" ] && [ -d "$LNBITS_STORE_PATH/lib/python3.12/site-packages/lnbits/templates" ]; then
    cp -r "$LNBITS_STORE_PATH/lib/python3.12/site-packages/lnbits/templates" "$DATA_DIR/lnbits-runtime/lnbits/"
fi

export HOST="127.0.0.1"
export PORT="${PORT:-5000}"
export LNBITS_DATA_FOLDER="$LNBITS_DATA_DIR"
export LNBITS_EXTENSIONS_PATH="$LNBITS_DATA_DIR"
export LNBITS_ADMIN_EXTENSIONS="scrum"
export LNBITS_USER_DEFAULT_EXTENSIONS="scrum"
export LNBITS_EXTENSIONS_DEFAULT_INSTALL="scrum"
export LNBITS_BACKEND_WALLET_CLASS="VoidWallet"
export LNBITS_SITE_TITLE="nixB Didactic Lab"

# Auto-complete first_install setup in background once LNbits starts
(
    until curl -s "http://$HOST:$PORT/api/v1/health" >/dev/null 2>&1 || curl -s "http://$HOST:$PORT/first_install" >/dev/null 2>&1; do
        sleep 1
    done
    sleep 1
    curl -s -X PUT "http://$HOST:$PORT/api/v1/auth/first_install" \
         -H "Content-Type: application/json" \
         -d '{"username":"admin","password":"Password123!","password_repeat":"Password123!"}' >/dev/null 2>&1 || true
) &

echo "⚡ [nixB LNbits] Launching LNbits backend via declarative flake on http://$HOST:$PORT ..."
cd "$DATA_DIR/lnbits-runtime"
exec nix run github:lnbits/lnbits/v1.5.4 -- --host "$HOST" --port "$PORT" "$@"
