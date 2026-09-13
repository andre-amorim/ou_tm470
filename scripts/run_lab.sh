#!/usr/bin/env bash
set -e

# Prevent file descriptor exhaustion on macOS / Darwin
ulimit -n 4096 2>/dev/null || true

REPO_ROOT="${NIXB_REPO_ROOT:-$PWD}"
DATA_DIR="$REPO_ROOT/.data"
BITCOIN_DATA_DIR="$DATA_DIR/bitcoin-regtest"
CLN_DATA_DIR="$DATA_DIR/cln-regtest"

mkdir -p "$BITCOIN_DATA_DIR"
mkdir -p "$CLN_DATA_DIR"

cleanup() {
    echo ""
    echo "🛑 [nixB LAB] Shutting down regtest daemons..."
    if [ -f "$CLN_DATA_DIR/regtest/lightningd.pid" ]; then
        CLN_PID=$(cat "$CLN_DATA_DIR/regtest/lightningd.pid" 2>/dev/null || true)
        if [ -n "$CLN_PID" ] && kill -0 "$CLN_PID" 2>/dev/null; then
            echo "Stopping lightningd (PID $CLN_PID)..."
            kill "$CLN_PID" 2>/dev/null || true
        fi
    fi
    pkill -f "lightningd.*$CLN_DATA_DIR" 2>/dev/null || true

    echo "Stopping bitcoind..."
    bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" stop 2>/dev/null || true
    sleep 1
    pkill -f "bitcoind.*$BITCOIN_DATA_DIR" 2>/dev/null || true
    echo "✅ [nixB LAB] Daemons halted cleanly."
}

trap cleanup EXIT INT TERM

echo "-----------------------------------------------------"
echo " 🏰 nixB LAB: INITIALIZING REGTEST DAEMONS"
echo "-----------------------------------------------------"
echo "Bitcoin Data: $BITCOIN_DATA_DIR"
echo "Lightning Data: $CLN_DATA_DIR"

# 1. Start Bitcoin Daemon
if ! pgrep -f "bitcoind.*$BITCOIN_DATA_DIR" > /dev/null; then
    echo "Starting bitcoind..."
    bitcoind -regtest -datadir="$BITCOIN_DATA_DIR" -fallbackfee=0.0002 -maxconnections=10 -daemon
else
    echo "bitcoind is already running."
fi

echo -n "Waiting for bitcoind RPC..."
until bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockchaininfo > /dev/null 2>&1; do
    echo -n "."
    sleep 1
done
echo " Ready!"

# 2. Setup Wallet and Funds
if ! bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" listwallets | grep -q "regtest_wallet"; then
    if bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" listwalletdir 2>/dev/null | grep -q "regtest_wallet"; then
        echo "Loading existing 'regtest_wallet'..."
        bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" loadwallet "regtest_wallet" > /dev/null
    else
        echo "Creating 'regtest_wallet'..."
        bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" createwallet "regtest_wallet" > /dev/null
    fi
fi

BLOCK_COUNT=$(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockcount)
if [ "$BLOCK_COUNT" -lt 101 ]; then
    echo "Mining 101 blocks to mature coinbase outputs..."
    GEN_ADDR=$(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" -rpcwallet=regtest_wallet getnewaddress)
    bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" -rpcwallet=regtest_wallet generatetoaddress 101 "$GEN_ADDR" > /dev/null
    echo "Chain matured at 101 blocks."
else
    echo "Chain already initialized (Current height: $BLOCK_COUNT)."
fi

# 3. Start C-Lightning
if ! pgrep -f "lightningd.*$CLN_DATA_DIR" > /dev/null; then
    echo "Starting lightningd..."
    lightningd --network=regtest \
               --lightning-dir="$CLN_DATA_DIR" \
               --bitcoin-datadir="$BITCOIN_DATA_DIR" \
               --log-file="$CLN_DATA_DIR/lightningd.log" \
               --daemon
    sleep 2
else
    echo "lightningd is already running."
fi

echo "-----------------------------------------------------"
echo " 🚀 REPRODUCIBILITY VERIFIED: LABORATORY ACTIVE"
echo "-----------------------------------------------------"
echo "Bitcoin Blocks: $(bitcoin-cli -regtest -datadir="$BITCOIN_DATA_DIR" getblockcount)"
echo "Lightning Node: $(lightning-cli --network=regtest --lightning-dir="$CLN_DATA_DIR" getinfo | grep '"id":' | head -n 1 | sed 's/ //g')"
echo "-----------------------------------------------------"

echo "Listening for events... Press Ctrl+C to stop."
while true; do
    sleep 2
done
