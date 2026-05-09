{
  description = "Didactic Laboratory for LNbits Integration (nixB)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            bitcoin
            clightning
            python312Packages.python
            uv
            git
            sqlite
            mermaid-cli
            pandoc
            tectonic
          ];
          shellHook = ''
            echo "--- nixB Didactic Laboratory ---"
            echo "Bitcoin Core: $(bitcoind --version | head -n 1)"
            echo "C-Lightning: $(lightningd --version)"
            echo "--------------------------------"
            echo "Run './start_lab.sh' to initialize the regtest environment."
          '';
        };
      }
    );
}
