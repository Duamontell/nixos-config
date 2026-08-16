{ config, pkgs, ... }:

{
  imports = [
    ./apps
    ./home-packages.nix
  ];
  
  home = {
    username = "dutelik";
    homeDirectory = "/home/dutelik";
    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;
}
