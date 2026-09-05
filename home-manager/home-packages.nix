{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    firefox
    keepassxc
    telegram-desktop

    # Code
    lazygit

    # Utils
    bat
    btop
    eza
    fastfetch
    fd
    mtr
    rclone
    ripgrep
    wl-clipboard

    # Lsp/Formatter
    lua-language-server
    nixd
    nixfmt
    stylua
  ];
}
