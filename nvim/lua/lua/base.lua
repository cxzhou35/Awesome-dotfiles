vim.cmd("autocmd!")
local set = vim.opt

-- General
vim.wo.number = true
set.title = true
set.title = true
set.hlsearch = true
set.shell = 'zsh'
set.backup = false
set.showcmd = true
set.compatible = false
set.cmdheight = 1
set.laststatus = 2
set.wrap = false -- No Wrap lines
set.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
set.backspace = { 'start', 'eol', 'indent' }
set.backupskip = { '/tmp/*', '/private/tmp/*' }
set.inccommand = 'split'
set.path:append { '**' } -- Finding files - Search down into subfolders
set.wildignore:append { '*/node_modules/*' }
set.list = true
set.listchars = { extends = '❯', precedes = '❮', trail = '·', tab = '▸ ' }
set.mouse = 'a'

-- Tab & Indent
set.autoindent = true
set.smartindent = true
set.breakindent = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 4
set.smarttab = true

-- Clipboard
set.clipboard = { 'unnamed', 'unnamedplus' }

-- Coding
vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencodings = { 'utf-8', 'gbk', 'gb2312' }
set.termencoding = 'utf-8'

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
set.formatoptions:append { 'r' }
