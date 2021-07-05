local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
  execute "packadd packer.nvim"
end

local packer = require "packer"
local use = packer.use

local plugins = function()
  -- LSP
  use {"neoclide/coc.nvim", branch = "release"}
  use {
    "kabouzeid/nvim-lspinstall",
    requires = {"neovim/nvim-lspconfig"}
  }

  -- SYNTAX HIGHLIGHT
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      "norcalli/nvim-colorizer.lua",
      "windwp/nvim-autopairs",
      "windwp/nvim-ts-autotag"
    }
  }
  use "sheerun/vim-polyglot"

  -- NVIMTREE
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons"
    }
  }

  -- TELESCOPE
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim"
    }
  }

  -- INTERFACE
  use "numtostr/FTerm.nvim"
  use "rktjmp/lush.nvim"
  use {
    "glepnir/galaxyline.nvim",
    branch = "main"
  }

  -- UTILITIES
  use "junegunn/vim-easy-align"
  use "mhartington/formatter.nvim"
  use "mattn/emmet-vim"

  -- PACKER
  use "wbthomason/packer.nvim"
end

packer.startup(plugins)

vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")
