{
  config.vim.languages.rust = {
    enable = true;
    crates.enable = true;
    format.enable = true;
    lsp = {
      enable = true;
      opts = ''
        ['rust-analyzer'] = {
          cargo = {
            allFeature = true,
          },
          checkOnSave = true,
          procMacro = {
            enable = true,
          },
        },
      '';
    };

    treesitter.enable = true;
  };
}
