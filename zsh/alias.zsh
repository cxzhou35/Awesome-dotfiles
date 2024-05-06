# Alias for my os
eval $(thefuck --alias fk)

# Paths
alias ..="cd .."
alias ...="cd ..."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias cd-="cd -"
alias cdh="cd ~"
alias cod="cd ~/Code/"
alias dod="cd ~/Downloads/"
alias vid="cd ~/.config/nvim/"
alias ghd="cd ~/Github/"
alias nbd="cd ~/Github/site/notebook/"
alias bod="cd ~/Github/site/blog/"

alias l="exa -la --icons"
alias ls="exa --icons"
alias ll="exa -l --icons"
alias la="exa -la --icons"
alias rmi="rm -i"
alias rmf="rm -f"

alias ssh="trzsz -d ssh"

alias cc="clear"
alias grep="grep --color"

alias py="python3"
alias python="python3"
alias pdt="python3 -m doctest -v"
alias jp="jupyter notebook"
alias jl="jupyter lab --log-level=40"

alias ra="yazi"
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
alias tb="tensorboard"
alias cleanpip="rm -rf ~/Library/Caches/pip"
alias askgpt="shell-genie ask"
alias pc="pokemon-colorscripts"
alias color="npx iroiro"
alias broz="npx broz"
alias onef="onefetch"
alias erd="erd -H -I -s rsize -L"
alias viewmd="frogmouth"

alias g++c="g++ -std=c++17 -Wall"

alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"
alias vz="vi ~/.zshrc"

alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

# Applications
alias chrome="open -a 'Google Chrome'"
alias ob="open -a 'Obsidian'"
alias brave="open -a 'Brave Browser'"

alias rd="reveal-md"
alias rdsite="reveal-md --static site"

alias hs="hugo server -D"
alias hp="hugo"

alias mkd="mkdocs gh-deploy --force"
alias mks="mkdocs serve --dirtyreload"

# Conda
alias condaa="conda activate"
alias condad="conda deactivate"
alias condae="conda env list"
alias condai="conda info"
alias condac="conda clean -a"

# Brew
alias bl="brew list"
alias bi="brew install"
alias br="brew remove"
alias bs="brew search"
alias bu="brew uninstall"
alias bd="brew doctor"

# Git
alias ga="git add ."
alias gs="git status"
alias gg="git reflog"
alias gm="git commit -m"
alias gu="git remote -v"
alias gb="git checkout"
alias gr="git checkout -- ."
alias gl="git pull"
alias gh="git push"
alias gd="git diff"

# Tmux
alias tn="tmux new -s"
alias tl="tmux ls"
alias td="tmux detach"
alias ta="tmux attach -t"
alias ts="tmux switch -t"
alias tk="tmux kill-session -t"
alias tr="tmux rename-session -t"

# Asciinema
alias asr="asciinema rec"
alias asu="asciinema upload"

