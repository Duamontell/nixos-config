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
    opencode-desktop

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
    biome
    lua-language-server
    nixd
    nixfmt
    stylua
  ];
}
