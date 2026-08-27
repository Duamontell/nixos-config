{ config, pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../nixos
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  nixpkgs.config.allowUnfree = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --remember --cmd start-hyprland";
        user = "greeter";
      };
    };
  };

  services.upower.enable = true;

  # services.printing.enable = true;
  # services.libinput.enable = true;
  
  environment.systemPackages = with pkgs; [
    # Utils
    lshw
    brightnessctl
    home-manager
  ];

  system.stateVersion = stateVersion;
}
