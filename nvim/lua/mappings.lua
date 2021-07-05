local map = vim.api.nvim_set_keymap
local noremap = {noremap = true}
local silent = {noremap = true, silent = true}

vim.g.mapleader = " "
map("n", "<Leader>e", ":NvimTreeToggle<CR>", noremap)
map("n", "<Leader>ff", ":Telescope find_files hidden=true<CR>", silent)
map("n", "<C-x>", "<CMD>lua require 'FTerm'.toggle()<CR>", silent)
map("t", "<C-x>", "<CMD>lua require 'FTerm'.toggle()<CR>", silent)

map("n", "<C-J>", "<C-W><C-J>", noremap)
map("n", "<C-K>", "<C-W><C-K>", noremap)
map("n", "<C-L>", "<C-W><C-L>", noremap)
map("n", "<C-H>", "<C-W><C-H>", noremap)
