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
git clone https://github.com/Xuer04/Awesome-dotfiles.git ~/.dotfiles

# replace {os} with linux/mac
cp -r ~/dotfiles/alacritty/{os} ~/.config/
```

Install theme:

```sh
mkdir -p ~/.config/alacritty/themes

git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```

Add an import to alacritty.yml (Replace {theme} with desired colorscheme):

```yaml
import:
 - ~/.config/alacritty/themes/themes/{theme}.yaml
```

Relaunch alacritty, now you can enjoy it!
