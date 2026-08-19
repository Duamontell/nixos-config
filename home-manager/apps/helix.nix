{ config, ... }:

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
      language = [{
        name = "lua";
        auto-format = false;
        formatter = {
          command = "stylua";
          args = [ "-" ];
        };
      }];
    };
  };
}
