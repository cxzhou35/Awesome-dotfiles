"------------------------"
"   Essential Settings   "
"------------------------"

" fold
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
set foldlevelstart=99
set foldclose=all
set showcmd
set shortmess=atI

" tab
set tabstop=8
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

" encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set number
set syntax=on
set cursorline
set ruler
set cindent
set smartindent
set nowrap
filetype plugin indent on
filetype plugin on
set backspace=indent,start,eol
set splitbelow
set matchtime=1
set hlsearch
set nocompatible
set showmatch
set list listchars=extends:❯,precedes:❮,trail:·,tab:▸\ 
set clipboard^=unnamed,unnamedplus
set ttyfast

" mouse
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" backup
setlocal noswapfile
set nobackup


"------------------------"
"    Plugins Settings    "
"------------------------"

call plug#begin()

" any valid git URL is allowed
Plug 'git@github.com:junegunn/vim-github-dashboard.git'

" multiple plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" on-demand loading
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'godlygeek/tabular'
Plug 'gcmt/wildfire.vim'
Plug 'jameslawson/sandwich.vim'

" theme
Plug 'arcticicestudio/nord-vim'
Plug 'EdenEast/nightfox.nvim'

" markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'preservim/vim-markdown'
Plug 'junegunn/vim-emoji'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'

" preview the rgb color in nvim
Plug 'KabbAmine/vCoolor.vim'

" lazygit
Plug 'kdheepak/lazygit.nvim'

" bufferline
Plug 'kyazdani42/nvim-web-devicons'

" indent
Plug 'Yggdroot/indentLine'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" autoformat
Plug 'vim-autoformat/vim-autoformat'

" highlight yank area
Plug 'machakann/vim-highlightedyank'

" ranger
Plug 'kevinhwang91/rnvimr'

call plug#end()


"------------------------"
"     Style Settings     "
"------------------------"

" theme
let g:nord_disable_background = v:true
colorscheme nord

" NERDTree settings
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=0
let NERDTreeWinSize=32
let g:nerdtree_tabs_open_on_console_startup=0
let g:NERDSpaceDelims = 1
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.git','\.gitignore']
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

" airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" highlight yank settings
let g:highlightedyank_highlight_duration = 1000

" markdown
let g:vim_markdown_math = 1
let g:mkdp_refresh_slow = 0
let g:markdown_syntax_conceal=0

" autoformat
let g:autoformat_verbosemode=1

" autopairs
au Filetype FILETYPE let b:AutoPairs = {"(": ")","{":"}","[",:"]"}

" indentLine
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 3
let g:indentLine_color_term = 14
let g:indentLine_bgcolor_term = 8
let g:indentLine_char_list = ['¦']
let g:vim_json_conceal=0

" emoji
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
set completefunc=emoji#complete

" ranger
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_hide_gitignore = 1
let g:rnvimr_border_attr = {'fg': 12, 'bg': -1}
highlight link RnvimrNormal CursorLine


"------------------------"
"    Mapping Settings    "
"------------------------"

" nerdtree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" tabs & buffers
map <C-n> :tabnew<CR>
map <C-c> :tabc<CR>
map <C-j> :bp<CR>
map <C-k> :bn<CR>
map <C-q> :bdelete<CR>

" file save and quit
nmap fw     :w<CR>
nmap fq     :q!<CR>
nmap fwq    :wq<CR>

" select all
map <C-A> ggVG
map! <C-A> <Esc>ggVG

" undo
map <C-Z> :u<CR>
map! <C-Z> <C-O>:u<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'
let g:UltiSnipsSnippetDirectories=["path/of/snippetDirectories"]

" wildfire
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-b> :Buffers<CR>
nnoremap <silent> <C-r> :Rg<CR>
nnoremap <silent> <C-l> :LazyGit<CR>

" markdown
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" undotree
nnoremap <F3> :UndotreeToggle<CR>

" ranger
nnoremap <F6> :RnvimrToggle<CR>

" python-coc
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" c/cpp compile
nmap <F5> :call CompileRunGcc()<CR>
function! CompileRunGcc()
    execute "w"
    if &filetype == 'c'
        if !isdirectory('build')
            execute "!mkdir build"
        endif
        execute "!gcc -g % -Wall -o build/%<"
        execute "!time ./build/%<"
    endif
    if &filetype == 'cpp'
        if !isdirectory('build')
            execute "!mkdir build"
        endif
        execute "!g++ -g % -Wall -o build/%<"
        execute "!time ./build/%<"
    endif
    if &filetype == 'py' || &filetype == 'python' || &filetype == 'python3'
        execute "!python3 %"
    endif
endfunction

" format
noremap <F4> :call FormatCode()<CR>
func! FormatCode()
    exec "w"
    if &filetype == 'c' || &filetype == 'h'
        exec "!astyle --style=allman --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'cc' || &filetype == 'hpp'
        exec "!astyle --style=allman --suffix=none %"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'|| &filetype == 'python'
        exec "!autopep8 --in-place --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
endfunc

" auto-complete
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

