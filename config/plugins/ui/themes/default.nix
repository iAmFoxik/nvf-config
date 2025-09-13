let
  themes = {
    github = ./github.nix;
    ef = ./ef-themes.nix;
    grey = ./grey.nix;
    makurai = ./makurai.nix;
  };
in {
  imports = [themes.makurai];
}
