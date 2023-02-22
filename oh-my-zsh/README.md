## Oh-my-zsh

### Table of contents

- `.zshrc`: Include all zsh configs.
- `themes`: Include zsh themes.
- `scripts`: Include all zsh scripts.

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

3. Change theme:
    ```sh
    cp ~/.dotfiles/oh-my-zsh/themes/* ~/.oh-my-zsh/themes/
    ```

4. Add scripts
    ```sh
    cp ~/.dotfiles/oh-my-zsh/scripts/* ~/.oh-my-zsh/scripts/
    ```

5. Install plugins
    ```sh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open

    git clone https://github.com/sukkaw/zsh-proxy.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-proxy
    ```

> Adding the plugins into `.zshrc` file:
>
> plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open web-search)
>
> Save file and quit, then type `source ~/.zshrc` in terminal to reload oh-my-zsh.
