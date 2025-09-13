{pkgs, ...}: {
  config.vim = {
    statusline.lualine = {
      enable = true;
      icons.enable = true;
      theme = "auto";
      sectionSeparator = {
        left = "";
        right = "";
      };

      activeSection = {
        a = [
          ''
            {
              "mode",
              icons_enabled = true,
            }
          ''
        ];
        b = [
          ''
            {
              "branch"
            }
          ''
          ''
            {
              "diff"
            }
          ''
          ''
            {
              'diagnostics',
              source = { 'nvim' },
              sections = { 'error' },
            }
          ''
          ''
            {
              'diagnostics',
              source = { 'nvim' },
              sections = { 'warn' },
            }
          ''
        ];
        c = [
          ''
            {
              "filename"
            }
          ''
        ];
        x = [
          ''
            {
              "lsp_status"
            }
          ''
          ''
            {
              "filetype"
            }
          ''
        ];
        y = [''''];
        z = [
          ''
            {
              "location"
            }
          ''
        ];
      };

      inactiveSection = {
        a = [""];
        b = [""];
        c = [
          ''
            {
              "filename"
            }
          ''
        ];
        x = [
          ''
            {
              "filetype"
            }
          ''

          ''
            {
              "location"
            }
          ''
        ];
        y = [""];
        z = [""];
      };
    };
  };
}
