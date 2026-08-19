{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    telegram-desktop
    v2rayn

    # lsp/formatter
    lua-language-server
    stylua
    nixd
    nixfmt-rfc-style
  ];
}
