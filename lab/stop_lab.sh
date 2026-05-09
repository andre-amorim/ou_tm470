#!/usr/bin/env bash

# nixB Laboratory: Shutdown Script
# Gracefully stops the Bitcoin and Lightning daemons.

echo "-----------------------------------------------------"
echo " 🏰 nixB LAB: SHUTTING DOWN SERVICES"
echo "-----------------------------------------------------"

# 1. Stop C-Lightning
if pgrep -x "lightningd" > /dev/null; then
    echo "Stopping lightningd..."
    lightning-cli --network=regtest stop > /dev/null 2>&1 || pkill -x lightningd
    echo "Lightning stopped."
else
    echo "Lightning is not running."
fi

# 2. Stop Bitcoin
if pgrep -x "bitcoind" > /dev/null; then
    echo "Stopping bitcoind..."
    bitcoin-cli -regtest stop > /dev/null 2>&1 || pkill -x bitcoind
    echo "Bitcoin stopped."
else
    echo "Bitcoin is not running."
fi

echo "-----------------------------------------------------"
echo " ✅ SERVICES STOPPED"
echo "-----------------------------------------------------"
