vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'junegunn/fzf',
        run = function() vim.fn['fzf#install']() end
    }

    use 'dracula/vim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }

    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end
    }

    use 'onsails/lspkind.nvim'

    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    use 'NvChad/nvim-colorizer.lua'

    use 'lewis6991/gitsigns.nvim'

    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'windwp/nvim-ts-autotag'

    use {
        'saecki/crates.nvim', tag = 'v0.4.0',
        requires = {
            { 'nvim-lua/plenary.nvim' },
        },
        config = function()
            require 'crates'.setup {}
        end
    }

    use 'tanvirtin/monokai.nvim'

    use 'tpope/vim-fugitive'

    use({ 'projekt0n/github-nvim-theme' })

    use 'wakatime/vim-wakatime'

    use 'nvim-tree/nvim-tree.lua'

    use 'neovim/nvim-lspconfig'

    use 'simrat39/rust-tools.nvim'

    use 'ray-x/go.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'Mofiqul/vscode.nvim'

    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        config = function()
            require("barbecue").setup()
        end,
    })

    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nyngwang/NeoTerm.lua',
        config = function()
            require('neo-term').setup {
                exclude_filetypes = { 'oil' },
            }
        end
    }

end)
