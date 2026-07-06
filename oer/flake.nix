{
  description = "nixB OER Codelab Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
    in {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.mkShell {
            buildInputs = [
              pkgs.caddy       # Go-based web server
              pkgs.go          # For claat build
            ];
            shellHook = ''
              echo "📘 nixB OER Codelab Environment"
              echo ""
              echo "Commands:"
              echo "  claat export nixb-codelab.md   - Build codelab HTML"
              echo "  caddy file-server --root nixb-reproducible-environments --listen :8081"
              echo ""
              if ! command -v claat &> /dev/null; then
                echo "⏳ Installing claat..."
                go install github.com/googlecodelabs/tools/claat@latest 2>/dev/null
                export PATH="$HOME/go/bin:$PATH"
                echo "✅ claat installed"
              fi
            '';
          };
        });
    };
}
