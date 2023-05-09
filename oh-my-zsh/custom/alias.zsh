# Alias for my os
eval $(thefuck --alias)

# alias ls="exa --icons"
# alias ll="exa -l --icons"
# alias la="exa -la --icons"
alias rm="rm -i"
# alias ssh="trzsz -d ssh"

alias cc="clear"
alias grep="grep --color"

alias py="python3"
alias python="python3"
alias pdt="python3 -m doctest -v"
alias jp="jupyter notebook"
alias jl="jupyter lab --log-level=40"

# alias ra="ranger"
# alias cat="bat"
# alias lg="lazygit"
# alias lzd="lazydocker"
# alias f="fzf"
# alias neo="neofetch"
# alias vi="nvim"
# alias top="btop"
# alias t="tmux"
# alias m="h-m-m"
# alias yg="you-get"
# alias dash="gh dash"
# alias tb="tensorboard"
# alias chrome="open -a 'Google Chrome'"
# alias ob="open -a 'Obsidian'"
# alias brave="open -a 'Brave Browser'"
# alias askgpt="shell-genie ask"
# alias update="brew update && brew upgrade"
# alias cleanpip="rm -rf ~/Library/Caches/pip"

alias g++c="g++ -std=c++17 -Wall"

alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"
alias vz="vi ~/.zshrc"

alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

# alias rd="reveal-md"
# alias rdsite="reveal-md --static site"
#
# alias hs="hugo server -D"
#
# alias mkd="mkdocs gh-deploy --force"
# alias mks="mkdocs serve --dirtyreload"

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

# alias for tmux
alias tn="tmux new -s"
alias tl="tmux ls"
alias td="tmux detach"
alias ta="tmux attach -t"
alias ts="tmux switch -t"
alias tk="tmux kill-session -t"
alias tr="tmux rename-session -t"

# alias for asciinema
# alias asr="asciinema rec"
# alias asu="asciinema upload"
