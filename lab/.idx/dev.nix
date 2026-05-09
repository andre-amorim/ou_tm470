{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.bitcoin
    pkgs.clightning
    pkgs.python311
    pkgs.python311Packages.websockets
  ];

  env = {
    BITCOIN_DATA_DIR = "/tmp/bitcoin-regtest";
    CLN_DATA_DIR = "/tmp/cln-regtest";
  };

  idx = {
    extensions = [
      "google.gemini-cli-vscode-ide-companion"
      "ms-python.python"
    ];

    previews = {
      enable = true;
      previews = {};
    };

    workspace = {
      onCreate = {
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };

      onStart = {
        start-lab = ''
          echo "Starting regtest lab..."
          
          mkdir -p $BITCOIN_DATA_DIR
          mkdir -p $CLN_DATA_DIR

          echo "Bitcoin data: $BITCOIN_DATA_DIR"
          echo "C-Lightning data: $CLN_DATA_DIR"
          
          bitcoind -regtest -datadir=$BITCOIN_DATA_DIR -daemon
          
          echo "Waiting for bitcoind RPC to become available..."
          
          until bitcoin-cli -regtest -datadir=$BITCOIN_DATA_DIR getblockchaininfo > /dev/null 2>&1; do
            echo -n "."
            sleep 1
          done
          
          echo # Newline
          echo "bitcoind is ready!"

          echo "Creating 'regtest_wallet'..."
          bitcoin-cli -regtest -datadir=$BITCOIN_DATA_DIR createwallet "regtest_wallet" || true
          
          echo "Generating 101 blocks to initialize the chain..."
          
          bitcoin-cli -regtest -datadir=$BITCOIN_DATA_DIR -rpcwallet=regtest_wallet generatetoaddress 101 \
            $(bitcoin-cli -regtest -datadir=$BITCOIN_DATA_DIR -rpcwallet=regtest_wallet getnewaddress)

          echo "Blocks mined! Starting lightningd..."
          
          lightningd --network=regtest \
                     --lightning-dir=$CLN_DATA_DIR \
                     --bitcoin-datadir=$BITCOIN_DATA_DIR \
                     --log-file=$CLN_DATA_DIR/lightningd.log \
                     --daemon
          
          echo "🚀 Regtest lab services are ready!"
          echo "-----------------------------------------------------"
        '';
      };
    };
  };
}
