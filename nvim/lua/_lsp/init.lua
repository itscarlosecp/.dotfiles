vim.cmd("source $HOME/.config/nvim/vim/coc.vim")

vim.api.nvim_set_var(
  "coc_global_extensions",
  {
    "coc-clangd",
    "coc-go",
    "coc-html",
    "coc-tsserver",
    "coc-json",
    "coc-lua",
    "coc-pyright",
    "coc-emmet",
    "coc-prettier",
    "coc-pairs"
  }
)
