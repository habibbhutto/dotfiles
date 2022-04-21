call plug#begin('~/.vim/plugged')

  " Plug 'preservim/nerdtree'

  Plug 'sainnhe/sonokai'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/everforest'
  Plug 'arcticicestudio/nord-vim'
  Plug 'yuttie/inkstained-vim'
  Plug 'wolverian/minimal'
  Plug 'cideM/yui'
  Plug 'widatama/vim-phoenix'
  Plug 'w0ng/vim-hybrid'
  Plug 'sainnhe/gruvbox-material'
  Plug 'FrenzyExists/aquarium-vim'
  Plug 'lamartire/hg.vim'
  Plug 'haystackandroid/rusticated'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  "Plug 'prabirshrestha/vim-lsp'
  "Plug 'neovim/nvim-lspconfig'
  " Tree-sitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()
