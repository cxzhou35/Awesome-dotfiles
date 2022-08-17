## Configure Your Awesome Mac

### 1.  Install homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2.  Download dotfiles

```bash
cd ~

git clone https://github.com/Xuer04/Awesome-dotfiles ~/dotfiles
```

### 3.  Install applications
```bash
git clone https://github.com/Xuer04/Awesome-applications ~/applications

xargs brew install < ~/applications/Mac/brew-formulae.txt

xargs brew install --cask < ~/applications/Mac/brew-casks.txt
```

###  4. Configure oh-my-zsh
```bash
cd ~

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp ~/dotfiles/oh-my-zsh/.zshrc ~

# install plugins and theme for oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open

cp ~/dotfiles/oh-my-zsh/my-magic.zsh-theme ~/.oh-my-zsh/themes

cp -r ~/dotfiles/oh-my-zsh/scripts ~/.oh-my-zsh/
```

### 5. Install nerd font
```bash
brew tap homebrew/cask-fonts

brew install --cask font-fira-code

cd ~/Downloads

wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip

# unzip and double click to install the fonts
```

### 6. Configure nvim
```bash
mkdir -p ~/.config/nvim/autoload

cp -r ~/dotfiles/nvim ~/.config

# relaunch nvim and :PlugInstall

# 1. theme
cp ~/.config/nvim/themes/nord.vim ~/.local/share/nvim/plugged/nord-vim/colors

# 2. dependencies
pip3 install pynvim

pip3 install neovim

pip3 install ranger-fm

# relaunch nvim and :checkhealth
```

### 7. Install miniconda

```bash
cd ~/Downloads

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh

chmod +x Miniconda3-latest-MacOSX-arm64.sh

./Miniconda3-latest-MacOSX-arm64.sh

cd ~

mkdir .conda
cp ~/dotfiles/conda/conda-for-mac.txt ~/.conda/.condarc
```

### 8. Configure cli tools

```bash
# git
git config --global user.name 

git config --global user.email cj@null.computer

git config --global core.editor nvim

# tmux
cp -r ~/dotfiles/tmux ~/.tmux

ln -s -f ~/.tmux/.tmux.conf

cp ~/dotfiles/tmux/.tmux.conf.local ~

# ranger
cp -r ~/dotfiles/ranger ~/.config

# pip
cd ~

mkdir .pip

cp ~/dotfiles/pip/pip.conf ~/.pip

# fzf
cd ~

mkdir share

cp ~/dotfiles/fzf/fzf_preview.py ~/share

# lazygit
cp -r ~/dotfiles/lazygit ~/.config
```

### 9. Create folders
```bash
mkdir -p ~/Code/c ~/Code/cpp ~/Code/python ~/Code/go ~/Code/rust ~/Code/shll
```
### 10. Configure system settings

```bash
# enable any source for install
sudo spctl --master-disable

# enable repeated click
defaults write -g ApplePressAndHoldEnabled -bool false

# configure vscode vim
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
```

#### Continuously updated...... 👻
