{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop apps
    firefox
    keepassxc
    telegram-desktop
    v2rayn

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

    # Compiler & Build Tools
    cabal-install
    ghc

    # Lsp/Formatter
    biome
    haskell-language-server
    lua-language-server
    nixd
    nixfmt
    stylua
  ];
}
