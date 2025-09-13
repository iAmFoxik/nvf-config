{
  pkgs,
  lib,
  ...
}: let
  inherit (lib.generators) mkLuaInline;
in {
  config.vim.autocomplete.nvim-cmp = {
    enable = true;

    sources = {
      buffer = null;
      path = null;
      calc = null;
    };

    sourcePlugins = with pkgs.vimPlugins; [
      cmp-nvim-lsp
      cmp-path
      cmp-buffer
      cmp-calc
      crates-nvim
    ];

    setupOpts = {
      window = {
        completion = lib.generators.mkLuaInline ''
          cmp.config.window.bordered({
            winhighlight = "Normal:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None"
          })
        '';
        documentation = lib.generators.mkLuaInline ''
          cmp.config.window.bordered({
            winhighlight = "Normal:Pmenu,FloatBorder:pmenu"
          })
        '';
      };

      mapping = mkLuaInline ''
        {
          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),
          ['<S-Up>'] = cmp.mapping.scroll_docs(-4),
          ['<S-Down>'] = cmp.mapping.scroll_docs(4),
          ['<C-d>'] = cmp.mapping.open_docs(),
        }
      '';
    };
  };
}
