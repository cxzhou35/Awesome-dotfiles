## Here is the fzf config for Zicx
#### How to install fzf on your PC ?
`1. source`

```bash
cd ~

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 

cd .fzf

./install
```

`2. vim-plug`
```bash
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
```
