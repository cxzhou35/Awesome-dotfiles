local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim' -- Theme: Nord
    use "EdenEast/nightfox.nvim" -- Theme: Nightfox
    use 'yamatsum/nvim-cursorline' -- Cursor Line
    use 'tjdevries/colorbuddy.nvim'
    use 'nvim-lua/plenary.nvim' -- Common Utilities
    use 'onsails/lspkind-nvim' -- Vscode-like Pictograms
    use 'folke/lsp-colors.nvim' -- Lsp Color
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'neovim/nvim-lspconfig' -- LSP
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use({"L3MON4D3/LuaSnip", run = "make install_jsregexp"})
    use 'rafamadriz/friendly-snippets'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update({with_sync = true})
        end
    }
    use 'kyazdani42/nvim-web-devicons' -- File Icons
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'

    -- Markdown
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown' -- Markdown Support
    use 'askfiy/nvim-picgo' -- Picgo
    use 'dkarter/bullets.vim' -- Better list
    use 'dhruvasagar/vim-table-mode' -- Better Table
    use 'lukas-reineke/headlines.nvim' -- Headlines Highlight
    use({
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn["mkdp#util#install"]() end
    })

    use 'akinsho/nvim-bufferline.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim' -- For git blame & browse
    use {
        'kyazdani42/nvim-tree.lua', -- Nvim Tree
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'gcmt/wildfire.vim' -- Select Content
    use 'numToStr/Comment.nvim' -- Comment
    use {'akinsho/toggleterm.nvim', tag = 'v2.*'}
    use 'lukas-reineke/indent-blankline.nvim'
    use 'vim-airline/vim-airline' -- Statusline
    use 'vim-airline/vim-airline-themes'
    use 'Pocco81/HighStr.nvim'
    use 'p00f/nvim-ts-rainbow' -- Rainbow parentheses
    use 'machakann/vim-highlightedyank'
    use({
        "kylechui/nvim-surround",
        tag = "*" -- Use for stability; omit to use `main` branch for the latest features
    })
    use 'lambdalisue/battery.vim'
    use 'Xuyuanp/scrollbar.nvim' -- Scrollbar
    use 'ggandor/lightspeed.nvim' -- Quick Jump
    use({
        "folke/noice.nvim",
        requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify"}
    })
end)
