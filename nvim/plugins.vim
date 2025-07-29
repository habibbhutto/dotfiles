call plug#begin('~/.config/nvim/.plugged')
  Plug 'sainnhe/sonokai'
  Plug 'catppuccin/nvim'
  Plug 'sainnhe/gruvbox-material'
  "Plug 'shaunsingh/nord.nvim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'rktjmp/lush.nvim'
  Plug 'mcchrish/zenbones.nvim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'rebelot/kanagawa.nvim'
  Plug 'f-person/auto-dark-mode.nvim'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " https://github.com/fatih/vim-go/wiki/Tutorial
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  "Plug 'ray-x/go.nvim'
  "Plug 'ray-x/guihua.lua' " recommanded if need floating window support

  " TODO: https://github.com/kevinhwang91/nvim-bqf
  "       https://github.com/yuki-yano/fzf-preview.vim?tab=readme-ov-file#usage
  "       https://github.com/junegunn/fzf.vim
  "       refine it further
  Plug 'kevinhwang91/nvim-bqf', { 'ft': 'qf' }

  Plug 'tpope/vim-fugitive'
      Plug 'airblade/vim-gitgutter'

  " LSP
  Plug 'github/copilot.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'olimorris/codecompanion.nvim'
  " Yay, pass source=true if you want to build from source
  Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

  Plug 'sbdchd/neoformat'
  Plug 'neovim/nvim-lspconfig'
      Plug 'mfussenegger/nvim-jdtls'
      Plug 'nvimtools/none-ls.nvim'
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

  " Tree-sitter
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}
      Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " The following plugins are slow impacting editing experience 
    " Plug 'nvim-treesitter/nvim-treesitter-context'
    " Plug 'ziontee113/syntax-tree-surfer'

  Plug 'nvim-tree/nvim-tree.lua'
  " Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x'}
       Plug 'kyazdani42/nvim-web-devicons'
  "    Plug 'MunifTanjim/nui.nvim'
  "    Plug 's1n7ax/nvim-window-picker'

  Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v3.x' }
      Plug 'nvim-lua/plenary.nvim'
      Plug 's1n7ax/nvim-window-picker'
      Plug 'nvim-tree/nvim-web-devicons'
      Plug 'MunifTanjim/nui.nvim'
      Plug '3rd/image.nvim'

  " Search, sort and pick
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-symbols.nvim'

  Plug 'nvim-lua/plenary.nvim'

  "Plug 'backdround/tabscope.nvim'
  Plug 'nanozuki/tabby.nvim'

  " Design tools
  Plug 'norcalli/nvim-colorizer.lua'
  " Markdown preview 
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  Plug 'MeanderingProgrammer/render-markdown.nvim'
  Plug 'junegunn/goyo.vim'
call plug#end()

" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

" Enable true color
" https://github.com/tmux/tmux/issues/1246
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"autocmd! User avante.nvim lua << EOF
"	require('avante_lib').load()
"	require('avante').setup()
"EOF
