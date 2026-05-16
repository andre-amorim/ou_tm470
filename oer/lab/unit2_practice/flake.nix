{
  description = "nixB Unit 2: The Reproducible Hello World Template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.python312Full
            pkgs.uv
          ];

          shellHook = ''
            echo "--- Welcome to the nixB Unit 2 Laboratory ---"
            echo "Python $(python --version) and uv $(uv --version) are now active."
            echo "This environment is isolated and reproducible."
            echo "---------------------------------------------"
          '';
        };
      });
}
