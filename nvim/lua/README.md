## Here is the nvim config(based on lua) for Zicx

### Table of contents

- [`init.lua`](./init.lua): Import all configuration modules for nvim.
- `lua`: Include basic lua configurations.
- `after`: Include all plugin configurations.
- `plugin`: Include files automatically created by packer.
- `res`: Include all files modified by Zicx.
- `snippets`: Include all code snippets.(Python, C/C++, Go, Lua etc.)

### Install Tutorial

```bash
cd ~ # or any path you want
git clone https://github.com/cxzhou35/Awesome-dotfiles.git ./dotfiles
mkdir -p ~/.config/nvim
cp -r ./dotfiles/nvim/lua/ ~/.config/nvim

# install all plugins
# relaunch neovim and type `:PackerInstall`

# install all nvim-lsp server
# relaunch neovim and type `:LspInstall [server]`

# install all tree-sitter
# relaunch neovim and type `:TSInstall [server]`
```

If you meet some problems, please contact [Zicx](https://github.com/cxzhou35) or raise an [issue](https://github.com/cxzhou35/Awesome-dotfiles/issues).

Neovim is worth a try! 😺
