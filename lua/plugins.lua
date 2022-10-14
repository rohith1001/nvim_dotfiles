-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- Color scheme plugin
    use 'gruvbox-community/gruvbox'

    -- Telescope requires plenary to function
    use 'nvim-lua/plenary.nvim'

    -- The main Telescope plugin
    use 'nvim-telescope/telescope.nvim'

    -- An optional plugin recommended by Telescope docs
    use 'nvim-telescope/telescope-fzf-native.nvim'
    --, {'do': 'make' }

    -- Status line theme
    use 'itchyny/lightline.vim'

    -- vim-fugitive
    use 'tpope/vim-fugitive'

    -- gitsigns
    use 'lewis6991/gitsigns.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind-nvim'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    use 'ThePrimeagen/harpoon'

    use 'ekalinin/Dockerfile.vim'

    use 'ellisonleao/glow.nvim'

    use 'glench/vim-jinja2-syntax'

    use 'sQVe/sort.nvim'

    -- LSP for go
    use 'golang/tools/tree/master/gopls'
end)
