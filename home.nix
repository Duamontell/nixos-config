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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
