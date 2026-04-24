import subprocess
import pytest

def test_bitcoind_installed():
    """Verify that bitcoind is available in the Nix environment."""
    result = subprocess.run(["bitcoind", "--version"], capture_output=True, text=True)
    assert result.returncode == 0
    assert "Bitcoin Core" in result.stdout

def test_lightningd_installed():
    """Verify that lightningd is available in the Nix environment."""
    result = subprocess.run(["lightningd", "--version"], capture_output=True, text=True)
    assert result.returncode == 0
    assert "v25" in result.stdout or "v24" in result.stdout

def test_bitcoin_cli_installed():
    """Verify bitcoin-cli is available."""
    result = subprocess.run(["bitcoin-cli", "--version"], capture_output=True, text=True)
    assert result.returncode == 0
    assert "Bitcoin Core" in result.stdout
