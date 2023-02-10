## Btop

### Installation

1. Ubuntu(snap)
```sh
snap install btop
```

2. Mac(brew)
```sh
brew install btop
```

3. From source
```sh
cd ~/Downloads
curl https://github.com/aristocratos/btop/releases/download/v1.2.7/btop-x86_64-linux-musl.tbz

tar -jxvf btop-x86_64-linux-musl.tbz
[optional] x btop-x86_64-linux-musl.tbz

cd btop-x86_64-linux-musl
./install.sh
```

> `x` is the oh-my-zsh plug for extraction, if you don't install it, using the command `tar` instead.

4. Change themes

Copy the theme files to the default btop theme folder (`~/.config/btop/themes`), launch btop and press `ESC` to choose the theme you like.

