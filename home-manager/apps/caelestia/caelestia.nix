{ config, inputs, ... }:

{
  imports = [
    inputs.caelestia-shell.homeManagerModules.default
  ];
  
  programs.caelestia = {
    enable = true;
    systemd.enable = false;
    cli.enable = true;
  };

  xdg.configFile."caelestia/shell.json".source = 
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/home-manager/apps/caelestia/shell.json";
}
