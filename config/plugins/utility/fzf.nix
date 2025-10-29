{
  config.vim = {
    fzf-lua = {
      enable = true;
    };
    keymaps = [
      {
        key = "<C-r>";
        mode = "n";
        silent = true;
        desc = "Open fzf files";
        action = "<CMD>FzfLua files<CR>";
      }
    ];
  };
}
