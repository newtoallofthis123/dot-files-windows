require('entry')

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set smarttab")
vim.cmd("set softtabstop=4")
vim.cmd("set mouse=a")
vim.cmd("set guicursor=n-v-c-i:ver1")
vim.cmd("set termguicolors")
vim.cmd("set encoding=UTF-8")

vim.cmd("set clipboard=unnamedplus")
vim.cmd("set wildmenu")

vim.api.nvim_set_keymap('n', '<leader>n', ':e <Space>', { noremap = true })
