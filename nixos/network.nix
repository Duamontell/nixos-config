{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = true;

    trustedInterfaces = [ "throne-tun" "lo" ];
    allowedTCPPorts = [ 53 2080 5533 38365 42709 43407 ];
    allowedUDPPorts = [ 53 5533 44635 54742 ];
    checkReversePath = "loose";
  };

  services.resolved.enable = true; 
}
