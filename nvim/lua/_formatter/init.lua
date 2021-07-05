local tabstop = vim.api.nvim_buf_get_option(0, "tabstop")

-- FORMATTERS INSTALLATION
-- prettier: npm i -g prettier
-- luafmt: npm i -g @appguru/luafmt
-- black: pip3 install black / sudo-apt install black
-- gofmt: included with go standard install

local prettier = function()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      vim.api.nvim_buf_get_name(0),
      "--single-quote",
      "--tab-width",
      tabstop,
      "--no-semi",
      "--jsx-single-quote",
      "--trailing-comma none"
    },
    stdin = true
  }
end

local luafmt = function()
  return {
    exe = "luafmt",
    args = {"--indent-count", 2, "--stdin"},
    stdin = true
  }
end

local black = function()
  return {
    exe = "black",
    args = {"-"},
    stdin = true
  }
end

local clang_format = function()
  return {
    exe = "clang-format",
    args = {"-"},
    stdin = true
  }
end

local gofmt = function()
  return {
    exe = "gofmt",
    args = {vim.api.nvim_buf_get_name(0)},
    stdin = true
  }
end

require "formatter".setup {
  logging = false,
  filetype = {
    -- Wev Develop
    javascript = {prettier},
    javascriptreact = {prettier},
    typescript = {prettier},
    typescriptreact = {prettier},
    -- Lua
    lua = {luafmt},
    -- Python
    python = {black},
    -- C/C++
    c = {clang_format},
    cpp = {clang_format},
    -- Golang
    go = {gofmt}
  }
}

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua FormatWrite
  autocmd BufWritePost *.py FormatWrite
  autocmd BufWritePost *.c,*.cpp FormatWrite
  autocmd BufWritePost *.go FormatWrite
augroup END
]],
  true
)
