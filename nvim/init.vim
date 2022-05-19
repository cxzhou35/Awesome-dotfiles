set guifont=Courier/20
" 折叠设置
set foldenable
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为1
set foldlevelstart=99       " 打开文件是默认不折叠代码
set foldclose=all          " 设置为自动关闭折叠
set showcmd
set shortmess=atI
" 语法高亮
set syntax=on
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=2
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set nocompatible
"设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 括号匹配
set showmatch
" 鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 显示行号
set number

set backspace=indent,start

" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

" 剪切板设置
set clipboard^=unnamed,unnamedplus

" plugins
call plug#begin()

" Any valid git URL is allowed
Plug 'git@github.com:junegunn/vim-github-dashboard.git'
 
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" lazygit
Plug 'kdheepak/lazygit.nvim'

Plug 'nvim-lua/plenary.nvim'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'gcmt/wildfire.vim'
Plug 'jameslawson/sandwich.vim'
Plug 'junegunn/vim-emoji'

" markdown preview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" command line 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'

" theme
" Initialize plugin system
Plug 'EdenEast/nightfox.nvim'

call plug#end()

" theme
colorscheme nightfox

" NERDTree config
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=32
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=0
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" command line config
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1  
let g:airline_theme='deus'

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif


" 快捷键
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
map <C-n> :tabnew<CR>

" markdown preview config
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview
let g:vim_markdown_math = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_markdown_css = '/home/vercent/.config/Typora/themes/purple.css'
set completefunc=emoji#complete

augroup emoji_complete
  autocmd!
  autocmd FileType markdown setlocal completefunc=emoji#complete
augroup END


let g:user_completion_chain = ['emoji#complete', 'HTMLTagComplete']
set completefunc=CompletionChain

"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>'
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
"设置文件目录
let g:UltiSnipsSnippetDirectories=["path/of/snippetDirectories"]

au Filetype FILETYPE let b:AutoPairs = {"(": ")"}

" wildfire config
" This selects the next closest text object.
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

" mapping for lazygit -- alt + g
noremap <M-g> :new<CR>:term lazygit<CR>i
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters<F11><F11>
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
