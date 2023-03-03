# Alias for my os
eval $(thefuck --alias)
alias ls="exa --icons"
alias ll="exa -l --icons"
alias la="exa -la --icons"

alias cc="clear"
alias grep="grep --color"

alias py="python3"
alias pdt="python3 -m doctest -v"
alias jp="jupyter notebook"
alias jl="jupyter lab --log-level=40"

alias ra="ranger"
alias cat="bat"
alias lg="lazygit"
alias lzd="lazydocker"
alias f="fzf"
alias neo="neofetch"
alias vi="nvim"
alias top="btop"
alias t="tmux"
alias m="h-m-m"
alias yg="you-get"
alias dash="gh dash"
# alias lc="lama-cleaner --model=lama --device=cpu --port=8080 --gui"

alias g++c="g++ -std=c++17 -Wall"

alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"
alias vz="vi ~/.zshrc"

# alias update="brew update && brew upgrade"
# alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias getip="ifconfig -a | egrep -A 7 '^en0' | grep inet | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -n 1"
alias path='echo; tr ":" "\n" <<< "$PATH"; echo;'

# alias rd="reveal-md"
# alias rdsite="reveal-md --static site"
#
# alias hs="hugo server -D"
#
# alias mkdeploy="mkdocs gh-deploy --force"
# alias mkserve="mkdocs serve --dirtyreload"



# Alias for conda
alias condaa="conda activate"
alias condad="conda deactivate"
alias condae="conda env list"
alias condai="conda info"
alias condac="conda clean -a"

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
