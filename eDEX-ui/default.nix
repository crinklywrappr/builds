let
  version = "v2.2.8";
  arch = "x86_64";
in { pkgs ? import <nixpkgs> {} }:
pkgs.appimageTools.wrapType2 {
  name = "eDEX-UI";
  src = pkgs.fetchurl {
    url = "https://github.com/GitSquared/edex-ui/releases/download/${version}/eDEX-UI-Linux-${arch}.AppImage";
    sha256 = "c8f28cd721ca032ca0c1960b756ca3e64dc441a643c32eafbb79c673b402d681";
  };
}
