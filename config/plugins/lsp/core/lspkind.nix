{
  config.vim.lsp.lspkind = {
    enable = true;

    setupOpts = {
      mode = "symbol";
      fields = ["abbr" "kind" "menu"];
      symbol_map = {
        Array = "󰅪";
        Boolean = "⊨";
        Class = "󰌗";
        Constructor = "";
        Key = "󰌆";
        Namespace = "󰅪";
        Null = "NULL";
        Number = "#";
        Object = "󰀚";
        Package = "󰏗";
        Property = "";
        Reference = "";
        Snippet = "";
        String = "󰀬";
        TypeParameter = "󰊄";
        Unit = "";
      };

      menu = {
        nvim_lsp = "[LSP]";
        buffer = "[BUF]";
        path = "[PATH]";
        luasnip = "[SNIP]";
        calc = "[CALC]";
        crates-nvim = "[CRATES]";
        treesitter = "[TREE]";
      };
    };
  };
}
