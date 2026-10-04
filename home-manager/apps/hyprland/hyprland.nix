{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    configType = "lua";

    extraConfig = builtins.readFile ./hyprland.lua;
  };

  home.file.".config/hypr/binds.lua".source = ./binds.lua;
  home.file.".config/hypr/caelestia-binds.lua".source = ./caelestia-binds.lua;
  home.file.".config/hypr/variables.lua".source = ./variables.lua;
}
