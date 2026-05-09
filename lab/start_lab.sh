#!/usr/bin/env bash

# nixB Laboratory: Regtest Environment Startup
# This script mirrors the automation from the original Google IDX environment.

set -e

# Configuration (using local relative paths for the monorepo)
DATA_DIR="$(pwd)/data"
BITCOIN_DATA_DIR="$DATA_DIR/bitcoin-regtest"
CLN_DATA_DIR="$DATA_DIR/cln-regtest"

mkdir -p "$BITCOIN_DATA_DIR"
mkdir -p "$CLN_DATA_DIR"

echo "-----------------------------------------------------"
echo " 🏰 nixB LAB: INITIALIZING REGTEST INFRASTRUCTURE"
echo "-----------------------------------------------------"
echo "Bitcoin Data: $BITCOIN_DATA_DIR"
echo "Lightning Data: $CLN_DATA_DIR"

# 1. Start Bitcoin Daemon
if ! pgrep -x "bitcoind" > /dev/null; then
    echo "Starting bitcoind..."
    bitcoind -regtest -datadir="$BITCOIN_DATA_DIR" -daemon
else
    echo "bitcoind is already running."
fi

echo "Waiting for bitcoind RPC..."
until bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockchaininfo > /dev/null 2>&1; do
    echo -n "."
    sleep 1
done
echo " Ready!"

# 2. Setup Wallet and Funds
if ! bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" listwallets | grep -q "regtest_wallet"; then
    echo "Creating 'regtest_wallet'..."
    bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" createwallet "regtest_wallet"
fi

echo "Checking chain maturity..."
BLOCK_COUNT=$(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockcount)

if [ "$BLOCK_COUNT" -lt 101 ]; then
    echo "Mining 101 blocks to initialize the chain..."
    GEN_ADDR=$(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" -rpcwallet=regtest_wallet getnewaddress)
    bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" -rpcwallet=regtest_wallet generatetoaddress 101 "$GEN_ADDR"
    echo "Chain matured at 101 blocks."
else
    echo "Chain already initialized (Current height: $BLOCK_COUNT)."
fi

# 3. Start C-Lightning
if ! pgrep -x "lightningd" > /dev/null; then
    echo "Starting lightningd..."
    lightningd --network=regtest \
               --lightning-dir="$CLN_DATA_DIR" \
               --bitcoin-datadir="$BITCOIN_DATA_DIR" \
               --log-file="$CLN_DATA_DIR/lightningd.log" \
               --daemon
    
    # Give lightningd a moment to initialize its socket
    sleep 2
else
    echo "lightningd is already running."
fi

echo "-----------------------------------------------------"
echo " 🚀 REPRODUCIBILITY VERIFIED: LABORATORY ACTIVE"
echo "-----------------------------------------------------"
echo "Bitcoin Node: $(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockchaininfo | grep '"blocks":' | sed 's/ //g')"
echo "Lightning Node: $(lightning-cli --network=regtest --lightning-dir="$CLN_DATA_DIR" getinfo | grep '"id":' | sed 's/ //g')"
echo "-----------------------------------------------------"
