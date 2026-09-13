{ ... }:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      theme = "monokai_pro";
      # theme = "gruvbox";

      editor = {
        line-number = "relative";
        scrolloff = 8;
        mouse = true;
        true-color = true;
        undercurl = true;
        bufferline = "multiple";
        cursorline = true;
        rulers = [ 120 ];
        auto-save = {
          after-delay = {
            enable = true;
            timeout = 1500;
          };

          focus-lost = true;
        };

        lsp = {
          enable = true;
          display-messages = true;
          display-progress-messages = false;
          auto-signature-help = true;
          display-inlay-hints = false;
          display-color-swatches = true;
          display-signature-help-docs = true;
          snippets = true;
          goto-reference-include-declaration = true;
        };

        indent-guides = {
          render = true;
        };

        gutters = [
          "diagnostics"
          "spacer"
          "line-numbers"
          "spacer"
          "diff"
        ];

        soft-wrap = {
          enable = true;
        };

        inline-diagnostics = {
          cursor-line = "error";
        };

        popup-border = "all";
      };

      keys = {
        normal = {
          "tab" = ":buffer-next";
          "S-tab" = ":buffer-previous";
          "C-w" = ":buffer-close";  
        };
      };
    };

    languages = {
      language-server = {
        biome = {
          command = "biome";
          args = [ "lsp-proxy" ];
        };
      };

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

        {
          name = "json";
          language-servers = [ "biome" ];
          formatter = {
            command = "biome";
            args = [ "format" ];
          };
        }

        {
          name = "javascript";
          language-servers = [ "biome" ];
          formatter = {
            command = "biome";
            args = [ "format" ];
          };
        }

        {
          name = "typescript";
          language-servers = [ "biome" ];
          formatter = {
            command = "biome";
            args = [ "format" ];
          };
        }

        {
          name = "jsx";
          language-servers = [ "biome" ];
          formatter = {
            command = "biome";
            args = [ "format" ];
          };
        }

        {
          name = "tsx";
          language-servers = [ "biome" ];
          formatter = {
            command = "biome";
            args = [ "format" ];
          };
        }
      ];
    };
  };
}
