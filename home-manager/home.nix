{ config, pkgs, ... }:

{
  imports = [
    ./apps
    ./home-packages.nix
  ];
  
  home = {
    username = "dutelik";
    homeDirectory = "/home/dutelik";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
