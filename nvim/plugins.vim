call plug#begin('~/.vim/plugged')
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'sainnhe/everforest'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'yuttie/inkstained-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'rmehri01/onenord.nvim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'w0ng/vim-hybrid'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Plug 'prabirshrestha/vim-lsp'
  Plug 'neovim/nvim-lspconfig'
  " Plug 'williamboman/mason.nvim'
  " Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'mfussenegger/nvim-dap'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'mfussenegger/nvim-lint'
  Plug 'sbdchd/neoformat'

  " Tree-sitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-refactor'

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

-- require('lint').linters_by_ft = {
--   typescript = {'eslint',}
-- }
-- 
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
EOF
