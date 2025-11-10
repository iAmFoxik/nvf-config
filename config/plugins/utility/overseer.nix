{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      overseer = {
        package = pkgs.vimPlugins.overseer-nvim;
        setup = ''
          require('overseer').setup({
            strategy = {
              'toggleterm',
              auto_scroll = true,
            },
          })
        '';
      };
      # dependencies
    };
    keymaps = [
      {
        key = "<F9>";
        mode = "n";
        silent = true;
        desc = "Run Overseer Task";
        action = "<CMD>OverseerRun<CR>";
      }
    ];
  };
}
