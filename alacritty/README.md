## Alacritty

### Installation

**Ubuntu/Debian**:

```sh
sudo add-apt-repository ppa:mmstick76/alacritty # add ppa to apt
sudo apt update                                 # update apt source
sudo apt install alacritty                      # install alacritty
```

**Mac**:

```bash
brew install --cask alacritty
```

**After install alacritty, clone the repo to use config**:

```bash
git clone https://github.com/cxzhou35/Awesome-dotfiles.git ~/.dotfiles

# replace {os} with linux/mac
cp -r ~/dotfiles/alacritty/{os} ~/.config/alacritty
```

Relaunch alacritty, now you can enjoy it!
