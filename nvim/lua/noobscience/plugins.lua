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
	config = function ()
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

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use {
	    "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'windwp/nvim-ts-autotag'

    use {
        'saecki/crates.nvim', tag='v0.4.0',
        requires = {
            {'nvim-lua/plenary.nvim'},
        },
        config = function()
            require'crates'.setup{}
        end
    }

    use 'tanvirtin/monokai.nvim'
end)
