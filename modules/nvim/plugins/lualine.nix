{ ... }:
{
  programs.nixvim = {
    plugins = {
      lualine = {
        enable = true;
        settings = {
          options = {
            icons_enabled = false;
            theme = "auto";
            component_separators = "";
            section_separators = "";
          };
          sections = {
            lualine_a = [ "mode" ];
            lualine_b = [ "branch" ];
            lualine_c = [ "filename" ];
            lualine_x = [ "lsp_status" ];
            lualine_y = [
              "searchcount"
              "selectioncount"
            ];
            lualine_z = [ "location" ];
          };
        };
      };
    };
  };
}
