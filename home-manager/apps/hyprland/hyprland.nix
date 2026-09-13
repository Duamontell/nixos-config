{ ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    configType = "lua";

    extraConfig = builtins.readFile ./hyprland.lua;
  };

  home.file.".config/hypr/binds.lua".source = ./binds.lua;
}
