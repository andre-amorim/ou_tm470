#!/usr/bin/env bash
set -e

# Prevent file descriptor exhaustion on macOS / Darwin
ulimit -n 4096 2>/dev/null || true

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="${NIXB_REPO_ROOT:-$(cd "$SCRIPT_DIR/.." && pwd)}"
export NIXB_REPO_ROOT="$REPO_ROOT"

PIDS=()

cleanup() {
    echo ""
    echo "🛑 [nixB Bootstrap] Terminating all background services..."
    for pid in "${PIDS[@]}"; do
        if kill -0 "$pid" 2>/dev/null; then
            kill "$pid" 2>/dev/null || true
        fi
    done
    wait "${PIDS[@]}" 2>/dev/null || true

    pkill -f "lightningd.*cln-regtest" 2>/dev/null || true
    pkill -f "bitcoind.*bitcoin-regtest" 2>/dev/null || true
    pkill -f "caddy.*8080" 2>/dev/null || true
    pkill -f "lnbits" 2>/dev/null || true
    echo "✅ [nixB Bootstrap] All services halted cleanly."
}

trap cleanup EXIT INT TERM

echo "================================================================"
echo " 🏰 nixB: Open University TM470 Capstone Laboratory Bootstrap"
echo "================================================================"
echo "Initializing services..."

# Export runtime environment so verify_artefact.sh in another terminal inherits all tools
mkdir -p "$REPO_ROOT/.data"
echo "export PATH=\"$PATH\"" > "$REPO_ROOT/.data/env.sh"

# 1. Start Lab (Bitcoin + Core Lightning)
"$REPO_ROOT/scripts/run_lab.sh" &
PIDS+=($!)

# Wait for bitcoind to initialize
sleep 5

# 2. Start LNbits
"$REPO_ROOT/scripts/run_lnbits.sh" &
PIDS+=($!)

# 3. Start OER Web Server
"$REPO_ROOT/scripts/run_oer.sh" &
PIDS+=($!)

# Give servers time to bind ports
sleep 8

clear || true

cat << "BANNER"
======================================================================
   ___  _____ ____    _   _ _____  ______   ___  ____   ____ 
  / _ \| ____|  _ \  | \ | |_ _\ \/ / __ ) / _ \|  _ \ / ___|
 | | | |  _| | |_) | |  \| || | \  /|  _ \| | | | |_) | |  _ 
 | |_| | |___|  _ < _| |\  || | /  \| |_) | |_| |  _ <| |_| |
  \___/|_____|_| \_(_)_| \_|___/_/\_\____(_)___/|_| \_\\____|

 TM470 BSc Capstone Project - Software Reproducibility Didactic Lab
======================================================================

 [1] 📘 OER Codelab Web Server:
     ➔ URL: http://localhost:8080

 [2] ⚡ LNbits + Scrum Board Extension:
     ➔ URL: http://localhost:5000/scrum/
     ➔ Superuser: admin  |  Password: TM470NixB
     ➔ Health API: http://localhost:5000/scrum/api/v1/health

 [3] 🧱 Bitcoin Regtest Blockchain:
     ➔ Status: Active (101 blocks mature)
     ➔ Datadir: .data/bitcoin-regtest

 [4] ⚡ Core Lightning (CLN) Node:
     ➔ Network: Regtest
     ➔ Datadir: .data/cln-regtest

----------------------------------------------------------------------
 Verification Commands:
  • curl -s http://localhost:8080 | head -n 5
  • curl -s http://localhost:5000/scrum/api/v1/health
  • ./scripts/verify_artefact.sh
----------------------------------------------------------------------
 Press Ctrl+C to stop all laboratory daemons.
BANNER

wait
