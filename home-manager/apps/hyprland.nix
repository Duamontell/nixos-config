{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    configType = "lua";

    settings = {};
  };

  xdg.configFile."hypr/hyprland.lua".source = ./hyprland.lua;
}
