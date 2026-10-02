{ inputs, user, stateVersion, ... }:

{
  imports = [
    ./home-packages.nix
    (inputs.import-tree ./apps)
    (inputs.import-tree ./themes)
  ];
  
  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = stateVersion;
  };

  programs.home-manager.enable = true;
}
