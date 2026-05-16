{
  description = "nixB Unit 3: The Deployment Object – Building your first Artifact";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        
        # We define our "Deployment Object" here as a simple shell script package
        hello-artifact = pkgs.writeShellApplication {
          name = "hello-nixb";
          runtimeInputs = [ pkgs.python312 ];
          text = ''
            echo "--- nixB Deployment Object Active ---"
            echo "Running from: $(dirname "$0")"
            python3 -c "print('Python successfully encapsulated in this artifact.')"
            echo "------------------------------------"
          '';
        };
      in
      {
        # 'packages.default' is what gets built when you run 'nix build'
        packages.default = hello-artifact;

        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.nix ];
        };
      });
}
