local map = vim.api.nvim_set_keymap
local noremap = {noremap = true}
local silent = {noremap = true, silent = true}

vim.g.mapleader = " "
map("n", "<Leader>e", ":NvimTreeToggle<CR>", noremap)

map("n", "<C-J>", "<C-W><C-J>", noremap)
map("n", "<C-K>", "<C-W><C-K>", noremap)
map("n", "<C-L>", "<C-W><C-L>", noremap)
map("n", "<C-H>", "<C-W><C-H>", noremap)
