{
  xdg.configFile."helix/forest".source = ./plugins/forest;
  xdg.configFile."helix/notify".source = ./plugins/notify;
  xdg.configFile."helix/glyph".source  = ./plugins/glyph;

  xdg.configFile."helix/init.scm".text = ''
    (require "notify/notify.scm")
    (require "glyph/glyph.scm")
    (require "forest/forest.scm")

    (forest-configure! 'left #:ignore (list ".git"))
    (forest-set-style! 'snacks)
  '';
}
