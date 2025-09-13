{ pkgs, ... }: {
  config.vim = {
    extraPlugins = {
      plenary = {
        package = pkgs.vimPlugins.plenary-nvim;
      };
    };
  };
}
