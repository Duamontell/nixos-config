{ pkgs, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  stylix = {
    enable = true;
    polarity = "dark";

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/d8/wallhaven-d8o5ym.jpg";
      sha256 = "1fswy1zrk32bcc4szbk6lpxmwm7q6fch05i9dbjmqcd0ppvvipj2";
      curlOpts = "--user-agent 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'";
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
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

  targets = {
    gtk.enable = false;
    gnome.enable = false;
    kde.enable = false;
  };
  
  };
}
