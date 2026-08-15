{ config, pkgs, ... }:

{
  programs.lazyvim = {
    enable = true;
    
    extras = {
      lang.nix.enable = true;  
    };
    
    extraPackages = with pkgs; [
      nixd
      alejandra
    ];
  };
}
