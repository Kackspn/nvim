local keymap = vim.keymap
local opts = {
  noremap = true,
  silent = true,
}
-- Dir Nav
keymap.set("n", "<leader>m", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>aa", ":bnext<CR>", opts)
keymap.set("n", "<leader>as", ":bprev<CR>", opts)
keymap.set("n", "<leader>b", ":bdelete<CR>", opts)

-- Neocodeium
vim.keymap.set("i", "<C-f>", function()
  require("neocodeium").accept()
end)
vim.keymap.set("i", "<C-w>", function()
  require("neocodeium").accept_word()
end)
vim.keymap.set("i", "<C-l>", function()
  require("neocodeium").accept_line()
end)
vim.keymap.set("i", "<C-e>", function()
    require("neocodeium").cycle_or_complete()
end)
vim.keymap.set("i", "<C-q>", function()
    require("neocodeium").cycle_or_complete(-1)
end)
vim.keymap.set("n", "<C-x>", "<cmd>NeoCodeium toggle<CR>", opts)
vim.keymap.set("i", "<C-x>", "<Escape>:NeoCodeium toggle<CR>i<Right>",opts)

--Terminal
vim.keymap.set("n", "<C-t>", "<cmd>terminal<CR>", opts)
vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:q<CR>", opts)
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

-- Resize
vim.keymap.set("n", "<A-k>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<A-j>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<A-l>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<A-h>", "<cmd>vertical resize +2<CR>", opts)
vim.keymap.set("t", "<A-k>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("t", "<A-j>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("t", "<A-l>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("t", "<A-h>", "<cmd>vertical resize +2<CR>", opts)
vim.keymap.set("i", "<A-k>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("i", "<A-j>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("i", "<A-l>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("i", "<A-h>", "<cmd>vertical resize +2<CR>", opts)

-- Panel Nav
keymap.set("n", "<leader>h", "<C-w>h", opts) -- Nav Left
keymap.set("n", "<leader>j", "<C-w>j", opts) -- Nav Down
keymap.set("n", "<leader>k", "<C-w>k", opts) -- Nav Up 
keymap.set("n", "<leader>l", "<C-w>l", opts) -- Nav Right

--LSP
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>pp", "<cmd>Lspsaga peek_definition<CR>", opts)

--Quick Save/Exit
keymap.set("n", "C", ":w<CR>", opts)
keymap.set("n", "Q", ":q<CR>", opts)
keymap.set("n", "F", ":q!<CR>", opts)
keymap.set("i", "<C-c>", "<Escape>:w<CR>", opts)
keymap.set("n", "<C-c>", ":w<CR>", opts)
keymap.set("i", "<C-C>", "<Escape>", opts)

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- V Split
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- H Split

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")


