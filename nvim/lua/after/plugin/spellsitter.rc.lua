local status, spells = pcall(require, 'spellsitter')
if (not status) then return end

spells.setup({
  highlight = {
    enable = true,
  },
  enable = true,
  debug = false
})

local my_augroup = vim.api.nvim_create_augroup("my_augroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "html",
    "javascript",
    "lua",
    "css",
    "json",
    "yaml",
    "bash",
    "toml",
    "vim",
    "text",
    "zsh",
    "conf",
    "tmux",
    }, -- disable spellchecking for these filetypes
  command = "setlocal nospell",
  group = my_augroup,
})
