{
  pkgs,
  lib,
  ...
}: {
  config.vim = {
    enableLuaLoader = true;
    # luaConfigPost =
    #   # lua
    #   ''
    #     vim.api.nvim_create_autocmd("InsertEnter", {
    #       pattern = "*",
    #       command = "set number norelativenumber",
    #     })
    #     vim.api.nvim_create_autocmd("InsertLeave", {
    #       pattern = "*",
    #       command = "set number relativenumber",
    #     })
    #   '';
    vimAlias = true;
    searchCase = "smart";
    preventJunkFiles = true;
    # spellcheck.enable = true;
    # spellcheck.programmingWordlist.enable = true;
    globals = {
      mapleader = " ";
      editorconfig = true;
    };

    options = {
      breakindent = true;
      copyindent = true;
      clipboard = "unnamedplus";
      completeopt = "menu,menuone,noselect";
      expandtab = true;
      splitright = true;
      splitbelow = true;
      fileencoding = "utf-8";
      ignorecase = true;
      infercase = true;
      linebreak = true;
      number = true;
      preserveindent = true;
      pumheight = 10;
      relativenumber = false;
      shiftwidth = 4;
      tabstop = 4;
      smartcase = true;
      so = 999;
      signcolumn = "yes";
      termguicolors = true;
      undofile = true;
      updatetime = 300;
      virtualedit = "block";
      writebackup = false;
      swapfile = false;
      wrap = true;
      colorcolumn = "80";
      sidescrolloff = 8;
    };

    diagnostics = {
      enable = true;
      config = {
        signs = lib.generators.mkLuaInline ''
          {
            [vim.diagnostic.severity.ERROR] = '✘',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '⚑',
            [vim.diagnostic.severity.INFO] = '',
          }
        '';
        underline = true;
      };
    };
  };
}
