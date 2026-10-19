{ config, lib, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

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

    powerManagement.enable = true;
    powerManagement.finegrained = false;
  };

  specialisation = {
    gaming.configuration = {
      system.nixos.tags = [ "gaming-time" ];

      hardware.nvidia = {
        powerManagement.finegrained = lib.mkForce false;

        prime = {
          offload = {
            enable = lib.mkForce false;
            enableOffloadCmd = lib.mkForce false;
          };
          sync.enable = lib.mkForce true;
        };
      };
      
      environment.sessionVariables = {
        __NV_PRIME_RENDER_OFFLOAD = "1";
        __NV_PRIME_RENDER_OFFLOAD_PROVIDER = "NVIDIA-G0";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
        __VK_LAYER_NV_optimus = "NVIDIA_only";
      };
    };
  };
}
