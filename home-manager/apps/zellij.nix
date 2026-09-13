{
  programs.zellij = {
    enable = true;

    settings = {
      theme = "retro-wave";
    };

    layouts = {
      dev = {
        layout = {
          _children = [
            {
              default_tab_template = {
                _children = [
                  {
                    pane = {
                      size = 1;
                      borderless = true;
                      plugin = {
                        location = "zellij:tab-bar";
                      };
                    };
                  }

                  {
                    children = { };
                  }

                  {
                    pane = {
                      size = 2;
                      borderless = true;
                      plugin = {
                        location = "zellij:status-bar";
                      };
                    };
                  }
                ];
              };
            }

            {
              tab = {
                _props = {
                  name = "main";
                };

                _children = [
                  {
                    pane = { };
                  }
                ];
              };
            }

            {
              tab = {
                _props = {
                  name = "dev";
                  split_direction = "vertical";
                };

                _children = [
                  {
                    pane = {
                      command = "yazi";
                      size = "20%";
                    };
                  }

                  {
                    pane = {
                      command = "hx";
                    };
                  }

                  {
                    pane = { };
                  }
                ];
              };
            }
          ];
        };
      };
    };
  };
}
