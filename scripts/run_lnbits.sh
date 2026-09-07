#!/usr/bin/env bash
set -e

REPO_ROOT="${NIXB_REPO_ROOT:-$PWD}"
LNBITS_CORE="$REPO_ROOT/lab/lnbits-core"
DATA_DIR="$REPO_ROOT/.data"
LNBITS_DATA_DIR="$DATA_DIR/lnbits"

mkdir -p "$LNBITS_DATA_DIR"

mkdir -p "$LNBITS_CORE/lnbits/extensions"
rm -rf "$LNBITS_CORE/lnbits/extensions/scrum"
cp -r "$REPO_ROOT/lab/extensions/scrum" "$LNBITS_CORE/lnbits/extensions/"

cd "$LNBITS_CORE"

export HOST="127.0.0.1"
export PORT="5000"
export LNBITS_DATA_FOLDER="$LNBITS_DATA_DIR"
export LNBITS_EXTENSIONS_PATH="lnbits"
export LNBITS_ADMIN_EXTENSIONS="scrum"
export LNBITS_USER_DEFAULT_EXTENSIONS="scrum"
export LNBITS_EXTENSIONS_DEFAULT_INSTALL="scrum"
export LNBITS_BACKEND_WALLET_CLASS="VoidWallet"
export LNBITS_SITE_TITLE="nixB Didactic Lab"

echo "⚡ [nixB LNbits] Launching LNbits backend on http://$HOST:$PORT ..."
exec nix run "$LNBITS_CORE#"
