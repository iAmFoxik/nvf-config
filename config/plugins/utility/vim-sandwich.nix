{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      vim-sandwich = {
        package = pkgs.vimPlugins.vim-sandwich;
      };
    };
  };
}
