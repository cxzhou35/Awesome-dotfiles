## 这是一篇 Ubuntu 安装之后的配置教程（以 ubuntu20.04 为例）

### 1. 换源

```bash
cd /etc/apt
# 备份原来的源
sudo cp sources.list sources.list.back
sudo vim sources.list

# 删除原来的源，把下面的源加进去
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse

# 保存退出(vim)
:wq 

# 更新一下源
sudo apt update 
sudo apt upgrade   # 有提示输出 Y
```

### 2. 安装基本环境

```bash
sudo apt install gcc gdb cmake build-essential 
sudo apt install wget htop aptitude
sudo apt install curl perl zip unzip
```



### 3. 安装 zsh && 配置 oh-my-zsh

```bash
# 查看当前的sehll
echo $SHELL
/bin/bash

# 下载 zsh
sudo apt install zsh -y  # -y 参数会自动安装依赖
# 将默认的shell换成zsh
chsh -s /bin/zsh
# 重启加载(如果是WSL的话shutdown再进就行)
reboot

# 再次查看当前的sehll
echo $SHELL
/bin/zsh  # 说明完成安装

# 下载 oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# 下载完之后配置文件在.zshrc, 主目录下会有一个.oh-my-zsh 的文件夹
cd
vim .zshrc  

# 修改主题
ZSH_THEME="ys"  

# 配置插件
# 1. zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 2. zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# 3. git-open
git clone https://github.com/paulirish/git-open.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-open
# 在配置文件中添加插件
vim .zshrc 
plugins=(git z sudo extract zsh-syntax-highlighting zsh-autosuggestions git-open)
source .zshrc

# 禁止自动更新
vim .zshrc
DISABLE_AUTO_UPDATE="true"
source .zshrc
```

### 4. 安装配置 git

```bash
# 安装 git
sudo apt install git

# 添加git信息
git config --global user.name "Xuer04"      (换成自己的github账户)
git config --global user.email "zjajzcx3566@163.com"     (换成自己的github邮箱)

# 重置 ssh
cd ~/.ssh
rm known_hosts

# 配置 ssh-key
ssh-keygen -t rsa -C "zjajzcx3566@163.com"      (换成自己的github邮箱)
# 一直回车就可以

# 打开 github  https://github.com/
# 将 ~/.ssh/id_rsa.pub 中的内容添加到ssh key中

 ssh -T  git@github.com
 # 输入 yes 后回车
```

### 5. 安装配置 vim

 vim 的配置文件有两个，分别是 User 和 root，对应 主目录下的 ~/.vimrc 和 /etc/vim/vimrc ，一般修改 ~/.vimrc

```bash
# clone 我的配置
cd
git clone https://github.com/Xuer04/Mydotfiles.git 
mkdir -p ~/.vim/autoload
cp Mydotfiles/vim/plug.vim  ~/.vim/autoload/
cp Mydotfiles/vim/.vimrc ~

# 打开 vim
vim
# 安装配置
:PlugInstall  # 会自动安装插件

# 更换主题
cp Mydotfiles/vim/nord.vim  ~/.vim/plugged/nord-vim/colors
```

### 6. 安装配置 tmux

```bash
# 安装 tmux
sudo apt install tmux

# 配置
git clone git@github.com:Xuer04/Mydotfiles.git  # 前面操作中clone过的不需要再clone
cp -r ~/Mydotfiles/tmux ~/.tmux
ln -s -f ~/.tmux/.tmux.conf
cp ~/Mydotfiles/tmux/.tmux.conf.local ~

# 测试
tmux 

# 如果有乱码的话，是字体的问题，需要安装 Nerd Font
https://github.com/ryanoasis/nerd-fonts  # 去这里下载
```

### 7. 安装配置 Python

``` bash
sudo apt install python3 python3-dev python3-pip
sudo apt install aptitude

# 设置 pip 的镜像
mkdir ~/.pip
cd ~/.pip
touch pip.conf
sudo vi ~/.pip/pip.conf
# 添加以下内容
[global]
index-url=http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com

# 安装 miniconda (可选)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

# 在 .zshrc 中添加环境变量
# 1. 一般conda会写到你的shell里面
source .zshrc

# 2. 如果没有，手动添加以下内容  注意：zicx 改成自己的username，查看miniconda安装的路径是否一致

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zicx/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zicx/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zicx/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zicx/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# 更换miniconda的源
cd .conda 
vim .condarc

# 添加以下内容
auto_activate_base: false
ssl_verify: true
channels:
  - http://mirrors.aliyun.com/anaconda/pkgs/main
  - http://mirrors.aliyun.com/anaconda/pkgs/r
  - http://mirrors.aliyun.com/anaconda/pkgs/msys2
show_channel_urls: true

# 清理缓存
conda clean -a
```

### 8. 安装配置终端工具

```bash
# 1. thefuck
sudo pip3 install thefuck
vim .zshrc
eval "$(thefuck --alias fuck)"  # 添加缩写
source .zshrc

# 2. fdfind
cd ~/Downloads
wget https://github.com/sharkdp/fd/releases/download/v8.3.2/fd_8.3.2_amd64.deb
sudo dpkg -i fd_8.3.2_amd64.deb
rm fd_8.3.2_amd64.deb

# 3. bat
cd ~/Downloads
wget https://github.com/sharkdp/bat/releases/download/v0.21.0/bat_0.21.0_amd64.deb
sudo dpkg -i bat_0.21.0_amd64.deb   
## ubuntu18.04 用musl版本的
wget https://github.com/sharkdp/bat/releases/download/v0.21.0/bat-musl_0.21.0_amd64.deb
rm bat_0.21.0_amd64.deb
vim .zshrc
alias cat="bat"  # 添加缩写
export BAT_THEME="Solarized (light)"  # 更改主题
source .zshrc

# 4. fzf (结合vim使用无敌)
## 通过git安装
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf/ 
./install
sudo apt install highlight

## 通过dpkg安装
cd ~/Downloads
wget http://cn.archive.ubuntu.com/ubuntu/pool/universe/f/fzf/fzf_0.30.0-1_amd64.deb
sudo dpkg -i fzf_0.30.0-1_amd64.deb
rm fzf_0.30.0-1_amd64.deb

## 更新fzf
cd ~/.fzf && git pull && ./install

# 5. ncdu
sudo apt install ncdu

# 6. nnn
sudo apt install nnn

# 7. tldr
sudo apt install tldr

# 8. exa
## 安装 rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
mkdir ~/Downloads/exa
wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip ~/Downloads/exa
unzip exa-linux-x86_64-v0.10.1.zip
sudo mv exa /usr/local/bin/

# 验证exa
exa -v
# 替换ls
vim .zshrc
alias ls="exa" 
source .zshrc

# 9. mcfly
```



