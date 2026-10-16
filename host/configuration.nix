{ inputs, config, pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    (inputs.import-tree ../nixos)
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.kdePackages.xdg-desktop-portal-kde      
      # pkgs.xdg-desktop-portal-gtk
    ];

    config = {
      common = {
        default = [ "kde" ];
      };
    };
  };
  
  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "xdgdesktopportal";
  };

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
