# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Themes
ZSH_THEME="my-magic"

# Engine
ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_ZLE

# Plugins
plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open zsh-vi-mode web-search)

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Global
export TERM="xterm-256color"
export PATH="/usr/local/bin:$PATH"

# MySql
# export PATH="/usr/local/mysql/bin:$PATH"

# PHP
# export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"

# Homebrew config(only for mac)
# export EDITOR="/opt/homebrew/bin/nvim"
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles/

# Scripts
source $ZSH/oh-my-zsh.sh
# Self-defined scripts
source $ZSH/scripts/src.zsh

# Bat config
# export BAT_THEME="Nord"

# Ranger config
# export RANGER_LOAD_DEFAULT_RC=FALSE

# Fzf config
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up --border --preview "echo {} | '${HOME}'/share/fzf_preview.py" '

# _fzf_compgen_path() {
#   fd --hidden --follow -E ".git" -E "node_modules" . /etc /home
# }
#
# _fzf_compgen_dir() {
#   fd --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
# }

# Conda config
# __conda_setup="$('/Users/vercent/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/vercent/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/vercent/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/vercent/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup

# Thefuck config
# eval $(thefuck --alias)

# Alias for my os

alias sz="source ~/.zshrc"
alias vz="vi ~/.zshrc"

# alias ls="exa --icons"    # you need to install `exa` first if you want to use this alias
# alias ll="exa -l --icons"
# alias la="exa -la --icons"
# alias cat="bat"           # you need to install `bat` first if you want to use this alias
# alias ra="ranger"           # you need to install `ranger` first if you want to use this alias
# alias lg="lazygit"           # you need to install `lazygit` first if you want to use this alias
# alias vi="nvim"           # you need to install `neovim` first if you want to use this alias
# alias f="fzf"           # you need to install `fzf` first if you want to use this alias
# alias neo="neofetch"           # you need to install `neofetch` first if you want to use this alias
# alias top="btop"           # you need to install `btop` first if you want to use this alias
# alias t="tmux"           # you need to install `tmux` first if you want to use this alias

# Alias for Python
alias py="python3"
alias pdt="python3 -m doctest -v"
alias jp="jupyter notebook"
alias jl="jupyter lab --log-level=40"

# Alias for C++
alias g++c="g++ -std=c++17 -Wall"

# Alias for conda
alias caa="conda activate"
alias cad="conda deactivate"
alias cae="conda env list"
alias cai="conda info"
alias cac="conda clean -a"

# Alias for git
alias ga="git add ."
alias gs="git status"
alias gg="git reflog"
alias gm="git commit -m"
alias gu="git remote -v"
alias gl="git pull"
alias gh="git push"
alias gd="git diff"
alias go="git open"

echo "🌈  Welcome to zsh."
