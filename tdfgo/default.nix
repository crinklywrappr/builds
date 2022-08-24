let
  pkgs = import <nixpkgs> {};
  pname = "tdfgo";
in with pkgs;
  buildGo118Module {
    name = pname;
    src = pkgs.fetchFromGitHub {
      owner = "crinklywrappr";
      repo = pname;
      rev = "bc01605a7e6909359d22a25ece2147cde675cb40";
      sha256 = "sha256-BRgtJxAfFox2tOkrET/Q6RDre3lISZ6lW2w3usmFhsk=";
    };
    vendorSha256 = "sha256-oRL/KfEnsDloC5zJly8jZPPhKCLiPsXo1KVMJgbtjJ4=";
  }