vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gh', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({
        search = vim.fn.input("Grep String > ")
    })
end, {})

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set('n', '<leader>q', vim.cmd.Q)

vim.keymap.set('n', '<C-S>', vim.cmd.w)

vim.keymap.set('n', '<C-Q>', vim.cmd.qa)

vim.api.nvim_set_keymap(
    "n",
    "<leader>t",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-t>",
    ":NvimTreeToggle<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>c",
    ":NvimTreeFocus<CR>",
    { noremap = true }
)
vim.keymap.set('n', '<M-t>', function() vim.cmd('NeoTermToggle') end)
vim.keymap.set('t', '<M-t>', function() vim.cmd('NeoTermEnterNormal') end)
