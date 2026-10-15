{ pkgs, inputs, ... }:

let
  myNoctalia = inputs.wrapper-modules.wrappers.noctalia-shell.wrap {
    inherit pkgs;

    settings =
      (fromTOML
        (builtins.readFile ./noctalia-config.toml));
  };
in
{
  home.packages = [ myNoctalia ];
}
