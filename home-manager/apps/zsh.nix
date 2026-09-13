{ config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      sw = "nh os switch";
      upd = "nh os switch --update";
      hms = "nh home switch";

      h = "hx";
      cat = "bat";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      ".." = "cd ..";
    };

    history = {
      size = 10000;
      save = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
      ignoreDups = true;
      ignoreSpace = true;
    };
  };
}
