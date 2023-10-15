:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set guicursor=n-v-c-i:ver1
:set termguicolors
:set encoding=UTF-8
:set clipboard=unnamedplus

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'nvim-tree/nvim-web-devicons'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'akinsho/bufferline.nvim'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

" Previous NERDTree bindings
"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
" Now NvimTree
nnoremap <C-t> :NvimTreeToggle<CR>
nmap <C-f> :NvimTreeFocus<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
tnoremap <silent> <C-[><C-[> <C-\><C-n>
nmap <silent> <C-p> :call CocActionAsync('runCommand', 'prettier.formatFile')<CR>
nmap <C-s> :w<CR>
nmap <C-q> :q<CR>
nmap <C-w> :wq<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-S-C> "+y

:set completeopt-=preview " For No Previews

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = '💯'
let g:airline_symbols.linenr = '📃'

inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>"
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'cd '.argv()[0] | wincmd l | endif

colorscheme sonokai
lua << EOF
require("bufferline").setup{}
diagnostics = "coc"
require "lsp_signature".setup({
bind = true,
handler_opts = {
    border = "rounded"
}
})
require("nvim-tree").setup()
require('gitsigns').setup()
EOF

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


