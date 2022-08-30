local state, mp = pcall(require, 'markdown-preview')
if (not state) then return end

mp.setup()

local set = vim.g
set.vim_markdown_math = 1
set.mkdp_refresh_slow = 0
set.mkdp_auto_start = 0
set.mkdp_auto_close = 1
set.markdown_syntax_conceal=0
set.mkdp_markdown_css = '/Users/vercent/share/mdtheme.css'
set.mkdp_page_title = '「${name}」'
set.mkdp_filetypes = 'markdown'
set.mkdp_theme = 'light'

