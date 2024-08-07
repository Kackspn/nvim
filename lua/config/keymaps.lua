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

--Ollama
keymap.set("n", "<leader>o", ":!ollama run codellama:13b<CR>", opts)

--Terminal
vim.keymap.set("n", "<C-t>", "<cmd>Lspsaga term_toggle<CR>", opts)
vim.keymap.set("t", "<C-c>", "<cmd>Lspsaga term_toggle<CR>", opts)

--Typewriter
vim.keymap.set("n", "<leader>tw", "<cmd>TWToggle<CR>", opts)

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


