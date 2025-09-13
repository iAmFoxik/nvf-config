# https://github.com/Skardyy/makurai-nvim
{pkgs, ...}: {
  config.vim = {
    extraPlugins = {
      makurai = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "makurai";
          version = "main";
          doCheck = false;
          src = pkgs.fetchFromGitHub {
            owner = "Skardyy";
            repo = "makurai-nvim";
            rev = "3f2134938dc34aba6eb1ceeeef4a10df6df11ffa";
            sha256 = "sha256-B6HEKj+lhL4xCbKfP3Xu3WuZ9D/8iyBHjl80DAuAolg=";
          };
        };
        setup = ''
          vim.cmd.colorscheme("makurai_light")
        '';
      };
    };
  };
}
