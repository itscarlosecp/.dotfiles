local map = vim.api.nvim_set_keymap
local noremap = {noremap = true}
local silent = {noremap = true, silent = true}

vim.g.mapleader = " "
map("n", "<Leader>e", ":NvimTreeToggle<CR>", noremap)
map("n", "<Leader>ff", ":Telescope find_files hidden=true<CR>", silent)
map("n", "<C-t>", "<CMD>lua require 'FTerm'.toggle()<CR>", silent)
map("t", "<C-t>", "<CMD>lua require 'FTerm'.toggle()<CR>", silent)

-- PANE MOMVEMENT
map("n", "<C-J>", "<C-W><C-J>", noremap)
map("n", "<C-K>", "<C-W><C-K>", noremap)
map("n", "<C-L>", "<C-W><C-L>", noremap)
map("n", "<C-H>", "<C-W><C-H>", noremap)

-- LSPSAGA
vim.cmd("inoremap <silent><expr> <C-.> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR> compe#confirm('<CR>')")
vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> K  <cmd>Lspsaga hover_doc<CR>")
vim.cmd("nnoremap <silent> ]g <cmd>Lspsaga diagnostic_jump_prev<CR>")
vim.cmd("nnoremap <silent> [g <cmd>Lspsaga diagnostic_jump_next<CR>")

-- BUFFERLINE
map("n", "[b", ":BufferLineCycleNext<CR>", silent)
map("n", "b]", ":BufferLineCyclePrev<CR>", silent)
