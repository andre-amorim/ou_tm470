{
  description = "nixB Unit 4: The Integration Object – LNbits Scrum Extension Lab";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # In a real scenario, this would point to the LNbits core repo
    # lnbits.url = "github:lnbits/lnbits"; 
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux"; # Or use flake-utils for multi-system
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.python312Full
          pkgs.uv
          pkgs.postgresql # Database dependency for LNbits
          pkgs.openssl
        ];

        shellHook = ''
          echo "--- Welcome to the nixB Capstone Laboratory ---"
          echo "Integrated Environment: LNbits Core + Scrum Extension"
          echo "Dependencies Loaded: Python, uv, PostgreSQL, OpenSSL"
          echo "-----------------------------------------------"
          echo "To start the integrated board, run: ./start_scrum_board.sh"
        '';
      };
    };
}
