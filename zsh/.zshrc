export ZSH=$HOME/.config/zsh

# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# load plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "MichaelAquilina/zsh-you-should-use"

# my config file
plug "$ZSH/scripts.zsh"
plug "$ZSH/alias.zsh"
plug "$ZSH/options.zsh"
# plug "$ZSH/openai_key.zsh"

# starship theme
eval "$(starship init zsh)"

