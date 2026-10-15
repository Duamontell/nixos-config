{ inputs, config, pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    (inputs.import-tree ../nixos)
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];


  nixpkgs.config.allowUnfree = true;

  # services.printing.enable = true;
  # services.libinput.enable = true;
  
  environment.systemPackages = with pkgs; [
    # Utils
    blueman
    brightnessctl
    dconf
    home-manager
    lshw
  ];

  system.stateVersion = stateVersion;
}
