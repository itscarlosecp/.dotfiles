local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.api.nvim_command 'packadd packer.nvim'
end

local packer = require 'packer'
local use = packer.use

local function plugins()
	-- LSP
	use {'neovim/nvim-lspconfig'}
	use {'kabouzeid/nvim-lspinstall', event = 'BufRead'}

	-- Autocomplete
	use {
		'hrsh7th/nvim-compe',
		event = 'InsertEnter',
		config = function()
			require '_compe'.config()
		end
	}

	-- Syntax
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- File Explorer
	use {'kyazdani42/nvim-tree.lua'}

	use {'wbthomason/packer.nvim'}
end

return packer.startup(plugins)
