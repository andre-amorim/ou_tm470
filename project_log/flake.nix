{
  description = "nixB Didactic Laboratory: Modular 'Dendritic' Infrastructure as Code";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import inputs.systems;
      
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        
        # 1. Infrastructure Layer (Deterministic Dependencies)
        _module.args.infrastructure = [
          pkgs.bitcoin
          pkgs.clightning
        ];

        # 2. Development Layer (Tooling)
        _module.args.tooling = [
          pkgs.uv
          pkgs.python312
          pkgs.bashInteractive
        ];

        devShells.default = pkgs.mkShell {
          name = "nixb-didactic-lab";
          
          # Combine layers for the full environment
          packages = config._module.args.infrastructure ++ config._module.args.tooling;

          shellHook = ''
            export UV_PYTHON_PREFERENCE=only-system
            echo "---------------------------------------------------------"
            echo " 🏰 nixB DIDACTIC LABORATORY (v2.0 Dendritic) "
            echo " Infrastructure: Bitcoin, C-Lightning"
            echo " Tooling: Python 3.12, uv, scrummd"
            echo "---------------------------------------------------------"
          '';
        };
      };
    };
}
