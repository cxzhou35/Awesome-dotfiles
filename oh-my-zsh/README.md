## Here is the oh-my-zsh config for Zicx

#### This folder contains zsh config file below:
- `.zshrc`: the zsh config file.
- `my-magic.zsh-theme`: the zsh theme(self-defined af-magic) config file.

#### How to install plugin in your PC ?
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open
plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open)
source ~/.zshrc

```
