{pkgs, ...}: {
  config.vim = {
    theme = {
      enable = true;
      name = "github";
      style = "light";
    };

    extraPlugins = {
      github-nvim-theme = {
        package = pkgs.vimPlugins.github-nvim-theme;
      };
    };
  };
}
