{ home-manager,  ... }:

{
  imports = [
    home-manager.nixosModules.default
  ];

  home-manager.backupFileExtension = "backup";
}
