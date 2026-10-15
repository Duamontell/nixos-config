{ inputs, ... }:

let
  myNoctalia = inputs.wrapper-modules.wrappers.noctalia-shell.wrap {
    settings =
      (fromTOML
        (builtins.readFile ./noctalia.json)).settings;
  };
in
{
  home.packages = [ myNoctalia ];
}
