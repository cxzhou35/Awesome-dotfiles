local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting



local sources = {
  diagnostics.markdownlint,
  diagnostics.zsh,
  -- foamat
  formatting.autopep8,
  formatting.cmake_format,
  formatting.markdownlint,
}

null_ls.setup({
    sources = sources,
})

