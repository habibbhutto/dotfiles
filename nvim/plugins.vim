call plug#begin('~/.config/nvim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'yuttie/inkstained-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'EdenEast/nightfox.nvim'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'mfussenegger/nvim-jdtls'

  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
  Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'petertriho/cmp-git'

  Plug 'mfussenegger/nvim-dap'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  " Tree-sitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  Plug 'nvim-treesitter/nvim-treesitter-context'

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-symbols.nvim'
call plug#end()

lua <<EOF
-- require("null-ls").setup({
--     sources = {
--         require("null-ls").builtins.code_actions.eslint,
--         require("null-ls").builtins.formatting.eslint,
--         require("null-ls").builtins.diagnostics.eslint,
--         require("null-ls").builtins.completion.spell,
--         require("null-ls").builtins.hover.dictionary,
--     },
-- })
EOF
