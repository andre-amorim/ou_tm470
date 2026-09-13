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
LNBITS_STORE_PATH=$(nix build github:lnbits/lnbits/v1.5.4 --no-link --print-out-paths | tail -n 1)
SITE_PACKAGES=$(find "$LNBITS_STORE_PATH" -type d -name "site-packages" 2>/dev/null | head -n 1)
mkdir -p "$DATA_DIR/lnbits-runtime/lnbits"
if [ ! -d "$DATA_DIR/lnbits-runtime/lnbits/static" ] && [ -n "$SITE_PACKAGES" ] && [ -d "$SITE_PACKAGES/lnbits/static" ]; then
    cp -r "$SITE_PACKAGES/lnbits/static" "$DATA_DIR/lnbits-runtime/lnbits/"
    chmod -R u+w "$DATA_DIR/lnbits-runtime/lnbits/static"
fi
if [ ! -d "$DATA_DIR/lnbits-runtime/lnbits/templates" ] && [ -n "$SITE_PACKAGES" ] && [ -d "$SITE_PACKAGES/lnbits/templates" ]; then
    cp -r "$SITE_PACKAGES/lnbits/templates" "$DATA_DIR/lnbits-runtime/lnbits/"
    chmod -R u+w "$DATA_DIR/lnbits-runtime/lnbits/templates"
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
    for i in {1..30}; do
        if curl -s -f "http://$HOST:$PORT/scrum/api/v1/health" >/dev/null 2>&1; then
            break
        fi
        curl -s -X PUT "http://$HOST:$PORT/api/v1/auth/first_install" \
             -H "Content-Type: application/json" \
             -d '{"username":"admin","password":"Password123!","password_repeat":"Password123!"}' >/dev/null 2>&1 || true
        sleep 1
    done
) &

echo "⚡ [nixB LNbits] Launching LNbits backend via declarative flake on http://$HOST:$PORT ..."
cd "$DATA_DIR/lnbits-runtime"
exec nix run github:lnbits/lnbits/v1.5.4 -- --host "$HOST" --port "$PORT" "$@"
