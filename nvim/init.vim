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
set softtabstop=2
set shiftwidth=2
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

set backspace=indent,start,eol

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

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'gcmt/wildfire.vim'
Plug 'jameslawson/sandwich.vim'

" theme
Plug 'arcticicestudio/nord-vim'
Plug 'EdenEast/nightfox.nvim'
" Plug 'shaunsingh/nord.nvim'

" markdown preview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" markdown emoji
Plug 'junegunn/vim-emoji'

" command line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'

" preview the rgb olor in nvim
Plug 'KabbAmine/vCoolor.vim'

" lazygit plugin in neovim
Plug 'kdheepak/lazygit.nvim'

" bufferline
Plug 'kyazdani42/nvim-web-devicons'

" Initialize plugin system
call plug#end()

" theme
let g:nord_disable_background = v:true

colorscheme nord

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
let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline_theme='alduin'

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" 快捷键
" nerdtree config
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" tabs & buffers
map <C-n> :tabnew<CR>
map <C-c> :tabc<CR>
map <C-j> :bp<CR>
map <C-k> :bn<CR>
map <C-z> :bdelete<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" file save & quit
nmap fw     :w<CR>
nmap fq     :q!<CR>
nmap fwq    :wq<CR>

"snips 快捷键
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>'
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
"设置文件目录
let g:UltiSnipsSnippetDirectories=["path/of/snippetDirectories"]

" wildfire config
" This selects the next closest text object.
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

" map config for fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-r> :Rg<CR>
nnoremap <silent> <C-l> :LazyGit<CR>

" markdown preview config
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview
let g:vim_markdown_math = 1
let g:mkdp_refresh_slow = 0

" nerdcommenter
let g:NERDSpaceDelims = 1

" undotree map config
nnoremap <F5> :UndotreeToggle<CR>

au Filetype FILETYPE let b:AutoPairs = {"(": ")"}

" vim emoji
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
set completefunc=emoji#complete

" c compile settings
nmap <F4> :call CompileRunGcc()<CR>
function! CompileRunGcc()
  execute "w"
  if &filetype == 'c'
    if !isdirectory('build')
      execute "!mkdir build"
    endif
    execute "!gcc % -o build/%<"
    execute "!time ./build/%<"
  endif
endfunction
