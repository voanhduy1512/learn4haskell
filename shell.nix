let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in 
pkgs.mkShell {
  buildInputs = [
    pkgs.haskell.compiler.ghc8102
    pkgs.haskell.packages.ghc8102.cabal-install
  ];
}
