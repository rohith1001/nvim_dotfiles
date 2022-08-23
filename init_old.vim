" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
" set splitbelow
" set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

call plug#begin('~/.config/nvim/plugged')
" Color scheme plugin
Plug 'gruvbox-community/gruvbox'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'

" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'

" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Status line theme
Plug 'itchyny/lightline.vim'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
call plug#end()

" ...general settings because there is already a status line
set noshowmode

" declare your color scheme
colorscheme gruvbox
" Use this for dark color schemes
set background=dark

" ... general settings to show git signs
set signcolumn=number

lua require('rohith_namespace')

" remap
let mapleader = ' '

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>

" " Copy to clipboard
vnoremap  <leader>y "*y
nnoremap  <leader>Y "*y$
nnoremap  <leader>y "*y
nnoremap  <leader>yy "*yy

" " Paste from clipboard
nnoremap <leader>p "*p
nnoremap <leader>P "*P
vnoremap <leader>p "*p
vnoremap <leader>P "*P

nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <leader>pv :wincmd v<bar> :Ex<bar> :vertical resize 30<Cr>

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
