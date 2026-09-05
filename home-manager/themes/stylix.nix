{ pkgs, inputs, ...  }:

{
  imports = [
    inputs.stylix.homeManagerModules.stylix
  ];

  stylix = {
    enable = true;
    polarity = "dark";

    fonts = {
      monospace = {
        name = "JetBrainsMono Nerd Font";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };

    sizes = {
      terminal = 13;
      applications = 11;
    };

    opacity = {
      terminal = 0.98;
      applications = 1.0;
    };
  };
}
