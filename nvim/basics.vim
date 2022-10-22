
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set norelativenumber
set cursorline
" set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set writebackup
set autoread
set noswapfile
set scrolloff=4
set wrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set ttyfast
set signcolumn=yes
"set noesckeys
set encoding=utf-8
set timeout timeoutlen=500 ttimeoutlen=30
set clipboard+=unnamedplus
set cmdheight=2
set cmdwinheight=10
" let g:clipboard = {
"       \   'name': 'xclip-custom',
"       \   'copy': {
"       \      '+': 'xclip -quiet -i -selection clipboard',
"       \      '*': 'xclip -quiet -i -selection primary',
"       \    },
"       \   'paste': {
"       \      '+': 'xclip -o -selection clipboard',
"       \      '*': 'xclip -o -selection primary',
"       \   },
"       \ }
" augroup cursor_off
"     autocmd!
"     autocmd WinLeave * set nocursorcolumn
"     autocmd WinEnter * set cursorline cursorcolumn
" augroup END

" autocmd InsertEnter,InsertLeave * set cul! cuc!
