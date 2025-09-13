# https://github.com/yorickpeterse/nvim-grey
{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      nvim-grey = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "nvim-grey";
          doCheck = false;
          version = "main";
          src = pkgs.fetchFromGitHub {
            owner = "yorickpeterse";
            repo = "nvim-grey";
            rev = "de9c4826c988af24c607bcac3bb0c4510b59853f";
            sha256 = "sha256-goh1fyaMdRLDpkQ9TGBVdrm0Ig303sjNvZuNl5Ttgf4=";
          };
        };
        setup = ''
          vim.cmd.colorscheme("grey")
        '';
      };
    };
  };
}
