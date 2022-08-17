# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="my-magic"

# Plugins
plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open)

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

export PATH="/usr/local/bin:$PATH"
export TERM="xterm-256color"

# homobrew config(only for mac)
export EDITOR="/opt/homebrew/bin/nvim"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

# my config file
source $ZSH/oh-my-zsh.sh
source $ZSH/scripts/fe.zsh
source $ZSH/scripts/fcd.zsh
source $ZSH/scripts/racd.zsh
source $ZSH/scripts/mkcd.zsh
source $ZSH/scripts/gp.zsh

# bat config
export BAT_THEME="Nord"

# ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

# fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up --border --preview "echo {} | '${HOME}'/share/fzf_preview.py" '

_fzf_compgen_path() {
  fd --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

# conda config
__conda_setup="$('/Users/vercent/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/vercent/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/vercent/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/vercent/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# alias for my os
eval $(thefuck --alias)
alias ls="exa --icons"
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias ws="wireshark"
alias py="python3"
alias pdt="python3 -m doctest -v"
alias jp="jupyter notebook"
alias jl="jupyter-lab"
alias nc="netcat"
alias ra="ranger"
alias cat="bat"
alias lg="lazygit"
alias f="fzf"
alias neo="neofetch"
alias vi="nvim"
alias sz="source ~/.zshrc"
alias top="btop"
alias rd="reveal-md --highlight-theme nord "
alias rs="reveal-md --static site"
alias t="tmux"
alias yg="you-get"
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias love="echo \" I love XZQ \" | figlet -f univers"

# alias for conda
alias condaa="conda activate"
alias condad="conda deactivate"
alias condae="conda env list"
alias condai="conda info"
alias condac="conda clean -a"

# alias for git
alias gita="git add ."
alias gits="git status"
alias gitg="git log"
alias gitm="git commit -m"
alias gitu="git remote -v"
alias gitl="git pull"
alias gith="git push"
alias gitd="git diff"

# vi-mod
bindkey '^v' edit-command-line
bindkey -v
bindkey -M vicmd "i" vi-insert
bindkey -M vicmd "I" vi-insert-bol
bindkey -M vicmd "h" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "gg" vi-beginning-of-line
bindkey -M vicmd "G" vi-end-of-line
bindkey -M vicmd "j" down-line-or-history
bindkey -M vicmd "k" up-line-or-history
bindkey -M vicmd "u" undo
bindkey -M vicmd "=" vi-repeat-search
bindkey -M vicmd "w" vi-forward-word-end

function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

echo "🌈  Welcome to zsh."

