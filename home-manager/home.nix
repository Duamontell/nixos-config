{ user, stateVersion, ... }:

{
  imports = [
    ./apps
    ./home-packages.nix
  ];
  
  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = stateVersion;
  };

  programs.home-manager.enable = true;
}
