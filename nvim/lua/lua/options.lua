vim.cmd("autocmd!")
local opt = vim.opt
local g = vim.g
local api = vim.api
local wo = vim.wo

-- General
wo.number = true
opt.title = true
opt.title = true
opt.hlsearch = true
opt.shell = 'zsh'
opt.backup = false
opt.showcmd = true
opt.compatible = false
opt.cmdheight = 1
opt.laststatus = 2
opt.updatetime = 100
opt.wrap = false -- No Wrap lines
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.backspace = {'start', 'eol', 'indent'}
opt.backupskip = {'/tmp/*', '/private/tmp/*'}
opt.inccommand = 'split'
opt.path:append{'**'} -- Finding files - Search down into subfolders
opt.wildignore:append{'*/node_modules/*'}
opt.list = true
opt.listchars = {extends = '❯', precedes = '❮', trail = '·', tab = '▸ '}
opt.mouse = 'a'
opt.iskeyword:append("-")

-- Tab & Indent
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.softtabstop = 0
opt.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.signcolumn = "yes"

-- Airline
g.airline_theme = 'base16_nord'
g.airline_powerline_fonts = 1
opt.laststatus = 2
g.airline_extensions = {'branch', 'battery', 'nvimlsp'}
g['airline#extensions#battery#enabled'] = 1
g['airline#extensions#nvimlsp#enabled'] = 1
g['airline#extensions#branch#enabled'] = 1
g['battery#update_statusline'] = 1

-- Indentline
g.indentLine_enabled = 1
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_current_context = true
g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
g.indent_blankline_filetype_exclude = {
    "help", "startify", "dashboard", "packer", "neogitstatus", "NvimTree",
    "Trouble"
}

-- Bullets
g.bullets_enabled_file_types = {'markdown', 'text'}
g.bullets_enable_in_empty_buffers = 0
g.bullets_pad_right = 0

-- Markdown
g.vim_markdown_folding_disabled = 1
g.vim_markdown_toc_autofit = 1
g.vim_markdown_math = 1
g.vim_markdown_json_frontmatter = 1
g.vim_markdown_strikethrough = 1

-- Markdown Preview
g.mkdp_theme = 'dark'

-- Vim-table-mode
g.table_mode_corner = '|'

-- Clipboard
opt.clipboard = {'unnamed', 'unnamedplus'}

-- Coding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencodings = {'utf-8', 'gbk', 'gb2312'}
opt.termencoding = 'utf-8'

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Undotree
g.undotree_WindowLayout = 3
g.undotree_SplitWidth = 26
g.undotree_DiffpanelHeight = 10
g.undotree_SetFocusWhenToggle = 1

-- Turn off paste mode when leaving insert
api.nvim_create_autocmd("InsertLeave", {pattern = '*', command = "set nopaste"})

-- Add asterisks in block comments
opt.formatoptions:append{'r'}

-- Highlight yank
g.highlightedyank_highlight_duration = 500
g.highlightedyank_highlight_in_visual = 1
