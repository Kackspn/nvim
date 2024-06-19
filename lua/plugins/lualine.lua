local config = function ()
  local theme = require("lualine.themes.nightfox")
  theme.normal.c.bg = nil

  require("lualine").setup({
    options = {
      theme = theme,
      globalstatus = true,
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        {
          "buffers",
        }
      },
    },
  })
end

return {
  "nvim-lualine/lualine.nvim",
  config = config,
  lazy = false,
}
