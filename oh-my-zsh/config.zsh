# Basic config
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
DISABLE_UPDATE_PROMPT="true"

export TERM="xterm-256color"

# Bat config
export BAT_THEME="Nord"

# Ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

# Fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up --border --preview "echo {} | '${HOME}'/share/fzf_preview.py" '

_fzf_compgen_path() {
  fd --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

# Conda config
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

