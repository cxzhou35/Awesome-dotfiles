# Path to your oh-my-zsh installation.
export ZSH="/home/vercent/.oh-my-zsh"

# ZSH_THEME="ys"
ZSH_THEME="my-magic"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git zsh-autosuggestions z sudo extract zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags

export TERM="xterm-256color"
export MANPATH=${MANPATH}:/usr/local/texlive/2021/texmf-dist/doc/man
export INFOPATH=${INFOPATH}:/usr/local/texlive/2021/texmf-dist/doc/info
export PATH=${PATH}:/usr/local/texlive/2021/bin/x86_64-linux

# conda config
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vercent/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vercent/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vercent/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vercent/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda config --set auto_activate_base false
# <<< conda initialize <<<

# chrome path config
export PATH=$PATH:/opt/google/chrome

# editor config
export EDITOR="/usr/bin/vim"


# CUDA path config
export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# oracle jdk environment confid
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64  ## 这里要注意目录要换成自己解压的jdk 目录
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH 

# personal alias settings 
eval $(thefuck --alias)
alias fd="fdfind"
alias ls="exa"
alias rs="roscore"
alias cg="chrome"
alias ws="wireshark"
alias py="python3"
alias jp="jupyter notebook"
alias landrop="/home/vercent/Downloads/LANDrop/LANDrop-latest-linux.AppImage"
alias rl="roslaunch"
alias view="evince-previewer"
alias nc="netcat"
alias df="pydf"
alias ra="ranger"
alias cat="bat"
alias lg="lazygit"
alias f="fzf"
alias neo="neofetch"
alias ns="nvidia-smi"
alias update="sudo apt update && sudo apt upgrade"
alias autoclean="sudo apt autoremove && sudo apt clean && sudo apt autoclean"
alias nv="nvim"
alias sz="source ~/.zshrc"

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

# ffmpeg config
export LD_LIBRARY_PATH=/usr/local/ffmpeg/lib:$LD_LIBRARY_PATH

# bat config
export BAT_THEME="Solarized (light)"

source /home/vercent/.config/broot/launcher/bash/br

# ros environment config
source /opt/ros/noetic/setup.zsh
source /home/vercent/code/ros_code/workpage1/devel/setup.zsh
source /home/vercent/code/ros_code/workpage2/devel/setup.zsh
source /home/vercent/code/ros_code/workpage3/devel/setup.zsh
source /home/vercent/code/ros_code/workpage4/devel/setup.zsh
source /home/vercent/code/ros_code/workpage5/devel/setup.zsh

# ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE


# fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up,alt-i:toggle+down --border --preview "echo {} | ~/share/fzf_preview.py" '

_fzf_compgen_path() {
  fd --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

