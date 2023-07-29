let
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs-channels/archive/nixpkgs-unstable.tar.gz") {};
  pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
  name = "my-env";
  buildInputs = [
    unstable.cabal-install
    pkgs.haskell.compiler.ghc945
    unstable.haskellPackages.haskell-language-server
  ];
}