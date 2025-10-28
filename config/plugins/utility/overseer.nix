{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      overseer = {
        package = pkgs.vimPlugins.overseer-nvim;
        setup = ''
          require('overseer').setup({
            strategy = {
              'toggleterm',
              direction = 'float',
              auto_scroll = true,
            },
          })
        '';
      };
    };
    keymaps = [
      {
        key = "<F9>";
        mode = "n";
        silent = true;
        desc = "Run Overseer Task";
        action = ":OverseerRun<CR>";
      }
    ];
  };
}
