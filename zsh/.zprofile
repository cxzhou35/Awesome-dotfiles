# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# navi
eval "$(navi widget zsh)"

# zoxide
eval "$(zoxide init zsh)"

# atuin
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^h' _atuin_search_widget

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# llvm
export PATH="/opt/homebrew/Cellar/llvm/16.0.3/bin:$PATH"

# php
export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"

# homebrew config(only for mac)
export EDITOR="/opt/homebrew/bin/nvim"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"

# ruby
export PATH="/opt/homebrew/Cellar/ruby/3.2.1/bin:$PATH"

# pipx
export PATH="/Users/vercent/.local/bin:$PATH"

# spicetify
export PATH="/Users/vercent/.spicetify:$PATH"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
