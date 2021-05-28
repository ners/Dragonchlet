{ pkgs ? import <nixpkgs> {}, }:

with pkgs.stdenv;

mkDerivation rec {
	pname = "Dragonchlet";
	version = "0.0.1";
	nativeBuildInputs = with pkgs; [ stack haskellPackages.profiteur ];
}