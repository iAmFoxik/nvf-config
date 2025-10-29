{
  config.vim.keymaps = [
    # Split window
    {
      key = "|";
      mode = "n";
      silent = true;
      desc = "Vertical split";
      action = "<CMD>vsplit<CR>";
    }
    {
      key = "\\";
      mode = "n";
      silent = true;
      desc = "Horizontal split";
      action = "<CMD>split<CR>";
    }
    # Go to windows
    {
      key = "<leader>h";
      mode = "n";
      silent = true;
      desc = "Go to the window on the left";
      action = "<CMD>wincmd h<CR>";
    }
    {
      key = "<leader>j";
      mode = "n";
      silent = true;
      desc = "Go to the window on the down";
      action = "<CMD>wincmd j<CR>";
    }
    {
      key = "<leader>k";
      mode = "n";
      silent = true;
      desc = "Go to the window on the up";
      action = "<CMD>wincmd k<CR>";
    }
    {
      key = "<leader>l";
      mode = "n";
      silent = true;
      desc = "Go to the window on the right";
      action = "<CMD>wincmd l<CR>";
    }
    # Highlight
    {
      key = ",,";
      mode = "n";
      silent = true;
      desc = "Turn off highlighting";
      action = "<CMD>nohlsearch<CR>";
    }
    # Tab
    {
      key = "]t";
      mode = "n";
      silent = true;
      desc = "Next tab";
      action = "<CMD>tabnext<CR>";
    }
    {
      key = "[t";
      mode = "n";
      silent = true;
      desc = "Previous tab";
      action = "<CMD>tabprevious<CR>";
    }
    # Redo
    {
      key = "<S-u>";
      mode = "n";
      silent = true;
      desc = "Redo";
      action = "<CMD>later<CR>";
    }
  ];
}
