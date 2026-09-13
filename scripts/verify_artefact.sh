#!/usr/bin/env bash
set -e

REPO_ROOT="${NIXB_REPO_ROOT:-$PWD}"
DATA_DIR="$REPO_ROOT/.data"

echo "======================================================"
echo " 🏰 nixB V&V Automated Verification Suite (EMA Ch. 6)"
echo " Date: $(date -u)"
echo " Host: $(uname -a)"
echo "======================================================"

PASS=0
FAIL=0

assert_check() {
    local name="$1"
    local command="$2"
    echo -n "Checking $name... "
    if eval "$command" > /dev/null 2>&1; then
        echo "✅ PASS"
        PASS=$((PASS + 1))
    else
        echo "❌ FAIL"
        FAIL=$((FAIL + 1))
    fi
}

# Resolve bitcoin-cli and lightning-cli either from PATH or via nix
BTC_CLI="bitcoin-cli"
if ! command -v bitcoin-cli > /dev/null 2>&1; then
    BTC_CLI="nix run nixpkgs#bitcoin -- bitcoin-cli"
fi

CLN_CLI="lightning-cli"
if ! command -v lightning-cli > /dev/null 2>&1; then
    CLN_CLI="nix run nixpkgs#clightning -- lightning-cli"
fi

assert_check "OER Web Server (Port 8080)" "curl -s -f http://localhost:8080"
assert_check "LNbits HTTP Server (Port 5000)" "curl -s -f -L http://localhost:5000"
assert_check "LNbits Scrum Extension Health API" "curl -s -f http://localhost:5000/scrum/api/v1/health"
assert_check "Bitcoin Core Regtest Block Height >= 101" "[ \$($BTC_CLI -regtest -datadir=$DATA_DIR/bitcoin-regtest getblockcount) -ge 101 ]"
assert_check "Core Lightning RPC Active" "$CLN_CLI --network=regtest --lightning-dir=$DATA_DIR/cln-regtest getinfo"

echo "------------------------------------------------------"
echo " Verification Summary: $PASS Passed, $FAIL Failed"
echo "======================================================"

if [ "$FAIL" -eq 0 ]; then
    echo "🎉 ALL ARTIFACT CRITERIA VERIFIED DETERMINISTICALLY!"
    exit 0
else
    echo "⚠️ Some verification checks failed."
    exit 1
fi
