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
    opencode

    # Utils
    bat
    btop
    eza
    fastfetch
    fd
    mtr
    rclone
    ripgrep
    tree
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
