{ ... }:

{
  programs.helix = {
    enable = true;

    defaultEditor = true;

    settings = {
      editor = {
        line-number = "relative";
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
