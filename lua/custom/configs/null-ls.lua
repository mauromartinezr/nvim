local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettierd.with { filetypes = { "javascript", "typescript", "html", "markdown", "css" } },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- python
  b.formatting.black,

  -- rust
  b.formatting.rustfmt,

  -- go
  b.formatting.gofmt,
  b.formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
