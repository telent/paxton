with import <nixpkgs> {}; 
let
  version = "0.1";
  nodePackages = import ./node-default.nix {
    inherit pkgs system;
  };
  clojurescriptJs = fetchurl {
    url = "https://gist.githubusercontent.com/kanaka/b588dbb6d44174672cc2/raw/repl-node.js";
    sha256 = "0msz5ikb7k8akww7q4q2m2b85mvpxcbsirad2132jdrswlpsap2n";
  };
in
  stdenv.mkDerivation rec {
    name = "paxton-${version}";
    src = ./. ;
    nativeBuildInputs = [ makeWrapper ];
    buildInputs = [ # nodePackages.package
     wayland wlc libxkbcommon pixman
     fontconfig pcre json_c pango cairo libinput libcap
     # nodejs
     dbus_libs
     boot
      ];
#    repl = "${nodejs}/bin/node -r ./wlc ${clojurescriptJs}";
    LD_LIBRARY_PATH = stdenv.lib.makeLibraryPath [ wlc dbus_libs ];
#    NODE_PATH = "${nodePackages.package}/lib/node_modules/paxton/node_modules" ;

  }

