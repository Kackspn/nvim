return {
  'joshuadanpeterson/typewriter.nvim',
  lazy = false,
  config = function()
    require('typewriter').setup()
  end,
  opts = {
    enable = true,
  },
}
