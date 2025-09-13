{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      ef-themes = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "ef-themes";
          version = "2025-25-02";
          doCheck = false;
          src = pkgs.fetchFromGitHub {
            owner = "oonamo";
            repo = "ef-themes.nvim";
            rev = "1a8ed9a36b6a1a841a6632103df0831a9212a7d2";
            sha256 = "sha256-np+a8hCpWONjxo7kVD4yJrPLm61MDekeJKs0qrsq8xM=";
          };
        };
        setup = ''
          require("ef-themes").setup({
            light = "ef-frost",
            dark = "ef-winter",
            transparent = false,
          })

          vim.cmd.colorscheme("ef-frost")
        '';
      };
    };
  };
}
