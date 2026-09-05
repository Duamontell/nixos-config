{ pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    polarity = "dark";
    image = pkgs.fetchurl {
      url = "https://whvn.cc/d8o5ym";
      hash = "0mf8rqs4s7xsq15020sln9wr27rmp9k90kl74rn7nf9g9n3gn73i";
    };

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
      sizes = {
        terminal = 13;
        applications = 11;
      };
    };

    opacity = {
      terminal = 0.98;
      applications = 1.0;
    };
  };
}
