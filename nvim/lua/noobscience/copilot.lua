require('copilot').setup({
  suggestion = {enabled = false},
  panel = {enabled = false},
})
require('copilot_cmp').setup()

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  sources = {
    {name = 'copilot'},
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({
      -- documentation says this is important.
      -- I don't know why.
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    })
  }),
  formatting = {
	format = lspkind.cmp_format({mode="symbol", max_width=50, symbol_map = { Copilot = "" }})
  }
})


