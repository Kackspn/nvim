return{

  'joshuadanpeterson/typewriter',
  dependencies = {
      'nvim-treesitter/nvim-treesitter',
  },
  lazy = false,
  config = function()
      require('typewriter').setup()
      vim.cmd('TWToggle')
  end,
  opts = {}
}
