{
  config.vim = {
    filetree = {
      neo-tree = {
        enable = true;
        setupOpts = {
          git_status_async = true;
          auto_clean_after_session_restore = true;
          enable_refresh_on_write = true;
          close_if_last_window = true;
          sources = ["filesystem"];
          source_selector = {
            winbar = true;
            content_layout = "center";
            sources = [
              {
                source = "filesystem";
                display_name = " Files";
              }
            ];
          };
          default_component_configs = {
            indent = {padding = 0;};
            icon = {
              folder_closed = "";
              folder_open = "";
              folder_empty = "";
              folder_empty_open = "";
              default = "󰈙";
            };
            modified.symbol = "";
          };

          window = {
            width = 30;
            mappings = {"<space>" = false;};
          };
        };
      };
    };
    maps.normal = {
      "<leader>e" = {
        silent = true;
        noremap = true;
        action = "<cmd>Neotree toggle<CR>";
        desc = "Toggle neotree";
      };
      "<leader>o" = {
        silent = true;
        lua = true;
        desc = "Neotree focus";
        action = ''
          function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end
        '';
      };
    };
  };
}
