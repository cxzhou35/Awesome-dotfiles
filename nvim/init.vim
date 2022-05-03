set guifont=Courier/20
set foldenable      " 允许折叠  
set showcmd         " 输入的命令显示出来，看的清楚些 
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示 
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
" 高亮当前行
set cursorline
highlight CursorLine cterm=NONE ctermbg=white ctermfg=blue guibg=NONE guifg=NONE

" theme
"colorscheme nord
" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
