--vim.cmd('colorscheme dracula')

vim.opt.termguicolors = true

require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            "rg",
            "--follow",
            "--hidden",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
        },

        pickers = {
            find_files = {
                hidden = true
            }
        }
    }
}
require("telescope").load_extension "file_browser"

require 'colorizer'.setup()
require('gitsigns').setup()

require("bufferline").setup({})

local lspkind = require("lspkind")
local cmp = require('cmp')

cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50, 
      ellipsis_char = '...',
	  before = function (entry, vim_item)  
        return vim_item
      end
    })
  }
}

lspkind.init({
  symbol_map = {
    Copilot = "",
  },
})

require("crates").setup{}

--require('monokai').setup { palette = require('monokai').pro}

vim.cmd('autocmd BufNewFile,BufRead *.mdx setfiletype markdown')

require("nvim-tree").setup()

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

require('lualine').setup()

require('vscode').load()

require('lualine').setup({
    options = {
        theme = 'vscode',
    },
})

