{
  description = "nixB: Open University TM470 BSc Capstone Project - Software Reproducibility Didactic Laboratory";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-2405.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-2405, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
        pkgs-stable = import nixpkgs-2405 { inherit system; };

        envPackages = [
          pkgs.bitcoin
          pkgs.clightning
          pkgs-stable.caddy
          pkgs.go
          pkgs.uv
          pkgs.curl
          pkgs.git
          pkgs.sqlite
          pkgs.procps
          pkgs.nix
          pkgs.coreutils
        ];

        oerScript = pkgs.writeShellApplication {
          name = "nixb-oer";
          runtimeInputs = [ pkgs-stable.caddy pkgs.go pkgs.git ];
          text = ''
            export NIXB_REPO_ROOT="''${NIXB_REPO_ROOT:-$PWD}"
            exec bash "${self}/scripts/run_oer.sh" "$@"
          '';
        };

        labScript = pkgs.writeShellApplication {
          name = "nixb-lab";
          runtimeInputs = [ pkgs.bitcoin pkgs.clightning pkgs.procps ];
          text = ''
            export NIXB_REPO_ROOT="''${NIXB_REPO_ROOT:-$PWD}"
            exec bash "${self}/scripts/run_lab.sh" "$@"
          '';
        };

        lnbitsScript = pkgs.writeShellApplication {
          name = "nixb-lnbits";
          runtimeInputs = [ pkgs.nix pkgs.coreutils ];
          text = ''
            export NIXB_REPO_ROOT="''${NIXB_REPO_ROOT:-$PWD}"
            exec bash "${self}/scripts/run_lnbits.sh" "$@"
          '';
        };

        bootstrapScript = pkgs.writeShellApplication {
          name = "nixb-bootstrap";
          runtimeInputs = envPackages;
          text = ''
            export NIXB_REPO_ROOT="''${NIXB_REPO_ROOT:-$PWD}"
            exec bash "${self}/scripts/bootstrap.sh" "$@"
          '';
        };
        verifyScript = pkgs.writeShellApplication {
          name = "nixb-verify";
          runtimeInputs = [ pkgs.bitcoin pkgs.clightning pkgs.curl pkgs.coreutils ];
          text = ''
            export NIXB_REPO_ROOT="''${NIXB_REPO_ROOT:-$PWD}"
            exec bash "${self}/scripts/verify_artefact.sh" "$@"
          '';
        };
      in
      {
        packages = {
          oer = oerScript;
          lab = labScript;
          lnbits = lnbitsScript;
          bootstrap = bootstrapScript;
          verify = verifyScript;
          default = bootstrapScript;
        };

        apps = {
          oer = {
            type = "app";
            program = "${oerScript}/bin/nixb-oer";
          };
          lab = {
            type = "app";
            program = "${labScript}/bin/nixb-lab";
          };
          lnbits = {
            type = "app";
            program = "${lnbitsScript}/bin/nixb-lnbits";
          };
          bootstrap = {
            type = "app";
            program = "${bootstrapScript}/bin/nixb-bootstrap";
          };
          verify = {
            type = "app";
            program = "${verifyScript}/bin/nixb-verify";
          };
          default = {
            type = "app";
            program = "${bootstrapScript}/bin/nixb-bootstrap";
          };
        };

        devShells.default = pkgs.mkShell {
          buildInputs = envPackages;

          shellHook = ''
            echo "=================================================================="
            echo " 🏰 nixB Capstone Monorepo Shell"
            echo " Available Commands:"
            echo "   • ./scripts/bootstrap.sh   (or 'nix run') - Boot full ecosystem"
            echo "   • ./scripts/run_lab.sh    - Regtest bitcoind + CLN"
            echo "   • ./scripts/run_lnbits.sh - LNbits + Scrum extension"
            echo "   • ./scripts/run_oer.sh    - OER Codelab server"
            echo "   • ./scripts/verify_artefact.sh - Automated V&V test suite"
            echo "=================================================================="
          '';
        };
      }
    );
}
