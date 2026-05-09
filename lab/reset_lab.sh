#!/usr/bin/env bash

# nixB Laboratory: Reset Script
# Stops services and wipes all Regtest data for a fresh start.

set -e

echo "-----------------------------------------------------"
echo " 🧹 nixB LAB: PERFORMING FULL RESET"
echo "-----------------------------------------------------"

# 1. Stop any running services
./stop_lab.sh

# 2. Wipe data directories
DATA_DIR="$(pwd)/data"
echo "Wiping data in $DATA_DIR..."

# We keep the directory structure but remove the contents
rm -rf "$DATA_DIR/bitcoin-regtest"
rm -rf "$DATA_DIR/cln-regtest"

# Re-create empty dirs
mkdir -p "$DATA_DIR/bitcoin-regtest"
mkdir -p "$DATA_DIR/cln-regtest"

echo "-----------------------------------------------------"
echo " ✨ LABORATORY RESET COMPLETED"
echo " Ready for a fresh './start_lab.sh'"
echo "-----------------------------------------------------"
