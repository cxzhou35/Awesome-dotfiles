# Basic config
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
DISABLE_UPDATE_PROMPT="true"

export TERM="xterm-256color"

# Bat config
export BAT_THEME="Catppuccin-mocha"

# Ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

# Fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 98% --layout=reverse --bind=ctrl-j:down,ctrl-k:up --border --preview "echo {} | '${HOME}'/share/fzf_preview.py" '

_fzf_compgen_path() {
  fd --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
}

