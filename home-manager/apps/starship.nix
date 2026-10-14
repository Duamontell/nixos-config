{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      format = "$all";
      right_format = "$time";

      username = {
        show_always = true;
        format = "[$user]($style)@";
        style_user = "yellow";
        style_root = "red";
      };

      hostname = {
        ssh_only = false;
        format = "[$ssh_symbol$hostname]($style) ";
        style = "bold purple";
      };

      directory = {
        truncation_symbol = "../";
      };

      time = {
        disabled = false;
        format = "[$time]($style)";
        style = "bold yellow";
      };
    };
  };
}
