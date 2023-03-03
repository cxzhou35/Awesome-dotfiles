## Oh-my-zsh

### Table of contents

```sh
.
├── custom
│   ├── alias.zsh
│   ├── config.zsh
│   └── script.zsh
└── themes
    └── my-magic.zsh-theme
```

### Installation

1. Install oh-my-zsh:
    ```sh
    cd ~
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

2. Clone the repo:
    ```sh
    cd ~
    git clone https://github.com/Xuer04/Awesome-dotfiles.git ~/.dotfiles
    ```

3. Load configs:
    ```sh
    cp ~/.dotfiles/oh-my-zsh/custom/* ~/.oh-my-zsh/custom/
    cp ~/.dotfiles/oh-my-zsh/themes/* ~/.oh-my-zsh/themes/
    cp ~/.dotfiles/oh-my-zsh/.zshrc ~
    ```

4. Install plugins
    ```sh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open
    ```

> Adding the plugins into `.zshrc` file:
>
> plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open web-search)
>
> Save file and quit, then type `source ~/.zshrc` in terminal to reload oh-my-zsh.
