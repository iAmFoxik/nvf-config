# https://github.com/rachartier/tiny-inline-diagnostic.nvim
{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      tiny-inline-diagnostic = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "tiny-inline-diagnostic";
          doCheck = false;
          version = "main";
          src = pkgs.fetchFromGitHub {
            owner = "rachartier";
            repo = "tiny-inline-diagnostic.nvim";
            rev = "f64efd33a51ea89bdb847fb3aaf716e96b83ba1a";
            sha256 = "sha256-odW/RWUEoya/e8GQVKBKKUVRbNfUjkb4faPqzChi2iE=";
          };
        };
        setup = ''
          require("tiny-inline-diagnostic").setup({
            multilines = {
              enabled = true;
            };
            options = {
              use_icons_from_diagnostic = true;
            };
            preset = "modern";
          })
        '';
      };
    };
  };
}
