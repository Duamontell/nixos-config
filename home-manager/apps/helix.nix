{ ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    themes = "monokai_pro";
    
    settings = {
      editor = {
        line-number = "relative";
        scrolloff = 8;
        mouse = true;
        true-color = true;
        undercurl = true;
      };
    };

    languages = {
      language = [
        {
          name = "lua";
          language-servers = [ "lua-language-server" ];
          auto-format = false;
          formatter = {
            command = "stylua";
            args = [ "-" ];
          };
        }

        {
          name = "nix";
          language-servers = [ "nixd" ];
          auto-format = false;
          formatter = {
            command = "nixfmt";
          };
        }
      ];
    };
  };
}
