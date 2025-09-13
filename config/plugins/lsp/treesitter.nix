{pkgs, ...}: {
  config.vim = {
    treesitter = {
      enable = true;
      fold = true;

      highlight.enable = true;
      indent.enable = true;

      addDefaultGrammars = true;

      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        nix
      ];
    };
  };
}
