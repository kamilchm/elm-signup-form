with import <nixpkgs>{};

stdenv.mkDerivation {
  name = "elm-signup-form";
  buildInputs = [ elmPackages.elm ];
  shellHook = ''
    alias build='elm-make SignupForm.elm --output elm.js'
  '';
}
