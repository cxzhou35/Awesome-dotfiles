autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,w <Esc>/ <++><CR>:nohlsearch<CR>c5l<CR>
autocmd Filetype markdown inoremap ,l ---<Enter>
autocmd Filetype markdown inoremap ,b **** <Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <Esc>F~hi
autocmd Filetype markdown inoremap ,h ==== <Esc>F=hi
autocmd Filetype markdown inoremap ,m $$$$ <ESC>F$hi
autocmd Filetype markdown inoremap ,z <sup></sup><Esc>F/hi
autocmd Filetype markdown inoremap ,x <sub></sub><Esc>F/hi
autocmd Filetype markdown inoremap ,i ** <Esc>F*i
autocmd Filetype markdown inoremap ,d `` <Esc>F`i
autocmd Filetype markdown inoremap ,n $$ <ESC>F$hi
autocmd Filetype markdown inoremap ,c ```<Enter><Enter>```<Enter><Enter><Esc>4kA
autocmd Filetype markdown inoremap ,t - [ ] <Enter><ESC>kA
autocmd Filetype markdown inoremap ,p ![]() <Esc>F[a
autocmd Filetype markdown inoremap ,u []() <Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><Esc>kA

