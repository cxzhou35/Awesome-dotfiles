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

" terminal
Plug 'voldikss/vim-floaterm'

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

" bufferline
Plug 'kyazdani42/nvim-web-devicons'

" indent
Plug 'Yggdroot/indentLine'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" copilot
Plug 'github/copilot.vim'

" autoformat
Plug 'vim-autoformat/vim-autoformat'

" highlight yank area
Plug 'machakann/vim-highlightedyank'

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

" undotree
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

if !exists('g:undotree_ShortIndicators')
    let g:undotree_ShortIndicators = 0
endif

if !exists('g:undotree_DiffAutoOpen')
    let g:undotree_DiffAutoOpen = 1
endif

if !exists('g:undotree_TreeNodeShape')
    let g:undotree_TreeNodeShape = '*'
endif

if !exists('g:undotree_TreeVertShape')
    let g:undotree_TreeVertShape = '|'
endif

if !exists('g:undotree_TreeSplitShape')
    let g:undotree_TreeSplitShape = '/'
endif

if !exists('g:undotree_TreeReturnShape')
    let g:undotree_TreeReturnShape = '\'
endif

if !exists('g:undotree_DiffCommand')
    let g:undotree_DiffCommand = "diff"
endif

if !exists('g:undotree_HighlightChangedText')
    let g:undotree_HighlightChangedText = 1
endif

if !exists('g:undotree_CursorLine')
    let g:undotree_CursorLine = 1
endif

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
au Filetype FILETYPE let b:AutoPairs = {"(": ")","{": "}","[": "]","<": ">"}

" copilot
let g:copilot_filetypes = {
      \ '*': v:false
      \ 'python': v:true
      \ }

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

" float terminal
let g:floaterm_position='center'
let g:floaterm_width=0.95
let g:floaterm_height=0.8
let g:floaterm_rootmarkers=['.project', '.git', '.hg', '.svn', '.root', '.gitignore']


"------------------------"
"    Mapping Settings    "
"------------------------"

" tabs & buffers
map <C-n> :tabnew<CR>
map <C-j> :bp<CR>
map <C-k> :bn<CR>
map <C-q> :bdelete<CR>

" cursor
map H ^
map J 5j
map K 5k
map L g_

" select all
map <C-A> ggVG
map! <C-A> <Esc>ggVG

" unselect highlight
map <C-i> :noh<CR>

" undo
map <C-Z> :u<CR>
map! <C-Z> <C-O>:u<CR>

" fzf
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-b> :Buffers<CR>
imap <silent> <C-f> :Files<CR>
imap <silent> <C-b> :Buffers<CR>

" file save and quit
nmap fw :w<CR>
nmap fq :q!<CR>
nmap fwq :wq<CR>

" wildfire
map <SPACE> <Plug>(wildfire-fuel)
vmap <C-SPACE> <Plug>(wildfire-water)

" nerdtree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

" undotree
nnoremap <F4> :UndotreeToggle<CR>
inoremap <F4> :UndotreeToggle<CR>

map oc :Copilot enable
map dc :Copilot disable

" format
noremap <F5> :call FormatCode()<CR>
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

" c/cpp compile
nmap <F6> :call CompileRunGcc()<CR>
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

" markdown
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" float terminal
map <silent> <C-t> :FloatermNew<CR>
map <silent> <C-l> :FloatermNew lazygit<CR>
map <silent> <C-r> :FloatermNew ranger<CR>
map <silent> <C-c> :FloatermNew --autoclose=0 --wintype=split gcc -g % -Wall -o build/%< && ./build/%<<CR>
map <silent> <C-y> :FloatermNew --autoclose=0 --wintype=split python3 %<CR>
tnoremap <silent> <C-t> <c-\><c-n>:FloatermNew<CR>

augroup vime_floaterm_group
    autocmd!
    au FileType floaterm tnoremap <buffer> <silent> <M-h> <c-\><c-n>:FloatermPrev<CR>
    au FIleType floaterm tnoremap <buffer> <silent> <M-l> <c-\><c-n>:FloatermNext<CR>
augroup END

" coc autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" enter to complete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

