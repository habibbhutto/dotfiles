call plug#begin('~/.vim/plugged')
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'sainnhe/everforest'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug 'yuttie/inkstained-vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'w0ng/vim-hybrid'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " post install (yarn install | npm install) then load plugin only for editing supported files
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  Plug 'prabirshrestha/vim-lsp'
call plug#end()
