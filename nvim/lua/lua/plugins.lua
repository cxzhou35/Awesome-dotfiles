local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use 'tjdevries/colorbuddy.nvim'
  -- use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-path' -- nvim-cmp source for neovim's built-in LSP
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use {
    'kyazdani42/nvim-tree.lua', -- Nvim tree
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'gcmt/wildfire.vim' -- Select content
  use 'numToStr/Comment.nvim' -- Comment
  use {
    'akinsho/toggleterm.nvim',
    tag = 'v2.*',
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'vim-airline/vim-airline' -- Statusline
  use 'vim-airline/vim-airline-themes'
  use 'ryanoasis/vim-devicons'
  use 'Pocco81/HighStr.nvim'
  use 'machakann/vim-highlightedyank'
  use 'lambdalisue/battery.vim'
  use 'glepnir/dashboard-nvim' -- Dashboard
  use 'Xuyuanp/scrollbar.nvim' -- Scrollbar
  use 'itchyny/vim-cursorword'
end)
