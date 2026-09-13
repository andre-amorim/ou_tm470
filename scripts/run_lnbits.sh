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

export HOST="127.0.0.1"
export PORT="${PORT:-5000}"
export LNBITS_DATA_FOLDER="$LNBITS_DATA_DIR"
export LNBITS_EXTENSIONS_PATH="$LNBITS_DATA_DIR/extensions"
export LNBITS_ADMIN_EXTENSIONS="scrum"
export LNBITS_USER_DEFAULT_EXTENSIONS="scrum"
export LNBITS_EXTENSIONS_DEFAULT_INSTALL="scrum"
export LNBITS_BACKEND_WALLET_CLASS="VoidWallet"
export LNBITS_SITE_TITLE="nixB Didactic Lab"

echo "⚡ [nixB LNbits] Launching LNbits backend via declarative flake on http://$HOST:$PORT ..."
exec nix run github:lnbits/lnbits/v1.6.1 -- "$@"
