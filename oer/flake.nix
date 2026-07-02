{
  description = "nixB OER Toolchain - OU-XML to Markdown/HTML Pipeline";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
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
            python312
            python312Packages.setuptools
            uv
            pandoc
            entr # For the live-watch feature
            go
          ];

          shellHook = ''
            echo "🏰 Welcome to the nixB OER Laboratory"
            echo "-------------------------------------"
            echo "Tools available: ou_xml_validator (via uv), pandoc, entr, go, codelab2ouxml, oer-server"
            
            # Setup uv environment if not exists
            if [ ! -d ".venv" ]; then
              uv venv
              uv pip install setuptools "git+https://github.com/innovationOUtside/ou-xml-validator.git"
            fi
            source .venv/bin/activate
            export PATH="$PWD/bin:$PATH"
            
            echo "🚀 Run './preview.sh' to start the Live-Development loop."
          '';
        };
      }
    );
}
