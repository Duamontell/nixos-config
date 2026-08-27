{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    telegram-desktop
    v2rayn
    firefox

    # Code
    lazygit

    # Utils
    bat
    btop
    eza
    fastfetch
    fd
    mtr
    ripgrep
    wl-clipboard

    # Lsp/Formatter
    lua-language-server
    stylua
    nixd
    nixfmt
  ];
}
