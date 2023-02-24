# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Engine
ZVM_READKEY_ENGINE=$ZVM_READKEY_ENGINE_ZLE

# Plugins
plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open zsh-vi-mode web-search)

# Self-defined files
source $ZSH/oh-my-zsh.sh
source $ZSH/custom/script.zsh
source $ZSH/custom/alias.zsh
source $ZSH/custom/config.zsh
source $ZSH/custom/my-magic.zsh-theme

echo "🌈  Welcome to zsh."
