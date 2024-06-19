return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")
    neocodeium.setup()
      vim.keymap.set("i", "<C-f>", neocodeium.accept)
      vim.keymap.set("i", "<C-e>", neocodeium.cycle_or_complete)
      vim.keymap.set("i", "<C-x>", "<Escape>:NeoCodeium toggle<CR>i<Right>")
      vim.keymap.set("i", "<C-l>", neocodeium.accept_line)
      vim.keymap.set("i", "<C-w>", neocodeium.accept_word)
  end,
}
