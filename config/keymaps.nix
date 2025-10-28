{
  config.vim.keymaps = [
    # Split window
    {
      key = "|";
      mode = "n";
      silent = true;
      desc = "Vertical split";
      action = ":vsplit<CR>";
    }
    {
      key = "\\";
      mode = "n";
      silent = true;
      desc = "Horizontal split";
      action = ":split<CR>";
    }
    # Go to windows
    {
      key = "<leader>h";
      mode = "n";
      silent = true;
      desc = "Go to the window on the left";
      action = ":wincmd h<CR>";
    }
    {
      key = "<leader>j";
      mode = "n";
      silent = true;
      desc = "Go to the window on the down";
      action = ":wincmd j<CR>";
    }
    {
      key = "<leader>k";
      mode = "n";
      silent = true;
      desc = "Go to the window on the up";
      action = ":wincmd k<CR>";
    }
    {
      key = "<leader>l";
      mode = "n";
      silent = true;
      desc = "Go to the window on the right";
      action = ":wincmd l<CR>";
    }
    # Highlight
    {
      key = ",,";
      mode = "n";
      silent = true;
      desc = "Turn off highlighting";
      action = ":nohlsearch<CR>";
    }
    # Tab
    {
      key = "]t";
      mode = "n";
      silent = true;
      desc = "Next tab";
      action = ":tabnext<CR>";
    }
    {
      key = "[t";
      mode = "n";
      silent = true;
      desc = "Previous tab";
      action = ":tabprevious<CR>";
    }
  ];
}
