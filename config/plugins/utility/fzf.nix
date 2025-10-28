{
  config.vim = {
    fzf-lua = {
      enable = true;
    };
    keymaps = [
      {
        key = "<C-f>";
        mode = "n";
        silent = true;
        desc = "Open fzf files";
        action = ":FzfLua files<CR>";
      }
    ];
  };
}
