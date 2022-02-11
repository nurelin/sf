{
  description = "Software Foundation";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            gnumake
            texlive.combined.scheme-full
            coq
            coqPackages.VST
            coqPackages.QuickChick
            ocaml
            perl

          ];
        };
      }
    );
}
