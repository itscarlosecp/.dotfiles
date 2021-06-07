vim.g.nvim_tree_side = "left" -- Explorer position
vim.g.nvim_tree_width = 30 -- Explorer width
vim.g.nvim_tree_ignore = {".git", "node_modules", ".next", "*.o", "*.out"} -- Ignored files/dirs
vim.g.nvim_tree_auto_open = 0 -- Open on enter Neovim
vim.g.nvim_tree_auto_close = 1 -- Close when there is no buffer
vim.g.nvim_tree_indent_markers = 0 -- Directory indicator icon
vim.g.nvim_tree_special_files = {"README.md", "Makefile", "MAKEFILE"} -- Special files

local tree_cb = require"nvim-tree.config".nvim_tree_callback
vim.g.nvim_tree_bindings = {
	-- Mappings
	["<CR>"]           = tree_cb("edit"),
	["o"]              = tree_cb("edit"),
	["<2-LeftMouse>"]  = tree_cb("edit"),
	["<2-RightMouse>"] = tree_cb("cd"),
	["<C-]>"]          = tree_cb("cd"),
	["<C-v>"]          = tree_cb("vsplit"),
	["<C-x>"]          = tree_cb("split"),
	["<C-t>"]          = tree_cb("tabnew"),
	["<"]              = tree_cb("prev_sibling"),
	[">"]              = tree_cb("next_sibling"),
	["<BS>"]           = tree_cb("close_node"),
	["<S-CR>"]         = tree_cb("close_node"),
	["<Tab>"]          = tree_cb("preview"),
	["I"]              = tree_cb("toggle_ignored"),
	["H"]              = tree_cb("toggle_dotfiles"),
	["R"]              = tree_cb("refresh"),
	["a"]              = tree_cb("create"),
	["d"]              = tree_cb("remove"),
	["r"]              = tree_cb("rename"),
	["<C-r>"]          = tree_cb("full_rename"),
	["x"]              = tree_cb("cut"),
	["c"]              = tree_cb("copy"),
	["p"]              = tree_cb("paste"),
	["y"]              = tree_cb("copy_name"),
	["Y"]              = tree_cb("copy_path"),
	["gy"]             = tree_cb("copy_absolute_path"),
	["[c"]             = tree_cb("prev_git_item"),
	["]c"]             = tree_cb("next_git_item"),
	["-"]              = tree_cb("dir_up"),
	["q"]              = tree_cb("close"),
}
