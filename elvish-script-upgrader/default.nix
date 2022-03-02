let
  pkgs = import <nixpkgs> {};
in with pkgs;
  buildGoModule {
    name = "upgrade-scripts-for-0.17";
    src = pkgs.fetchgit {
      name = "upgrade-scripts-for-0.17";
      url = "https://github.com/elves/upgrade-scripts-for-0.17";
      rev = "b39381622fc3bd29e835304ec8de2bf63cd01237";
      sha256 = "0bfr18mi0mr1yjka038hcwy3izjsr30iqbdhbc63fnxphmaf10ll";
    };
    vendorSha256 = "1gv4k188wr0hx05034v6qlf8902mamjfyms9jhmb4pgaqc3za2dy";
  }
