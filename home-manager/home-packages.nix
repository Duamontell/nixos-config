{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    v2rayn
    firefox

    # code
    lazygit

    # Utils
    wl-clipboard

    # lsp/formatter
    lua-language-server
    stylua
    nixd
    nixfmt
  ];
}
