" Tuning defaults to my preferences
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set relativenumber
set cursorline
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
set encoding=utf-8
set timeout timeoutlen=500 ttimeoutlen=30
set cmdheight=1
set cmdwinheight=10

" I guess, this setup for clipboard would work almost everywhere
" If it doesn't work well in some environment, I will find a way
set clipboard+=unnamedplus
let g:clipboard = {
      \   'name': 'xclip-custom',
      \   'copy': {
      \      '+': 'xclip -i -selection clipboard',
      \      '*': 'xclip -i -selection primary',
      \    },
      \   'paste': {
      \      '+': 'xclip -o -selection clipboard',
      \      '*': 'xclip -o -selection primary',
      \   },
      \ }

" On WSL this works well but slower at times
" let g:clipboard = {
"       \  'name' : 'custom-clipboard',
"       \  'copy' : {
"       \    '+' : 'win32yank.exe -i --crlf',
"       \    '*' : 'win32yank.exe -i --crlf',
"       \  },
"       \  'paste' : {
"       \    '+' : 'win32yank.exe -o --lf',
"       \    '*' : 'win32yank.exe -o --lf',
"       \  },
"       \}
" 
"
" let s:win32yank = '$NEOVIM_WIN_DIR/bin/win32yank.exe'
" let g:clipboard = {
"       \  'name' : 'wsl',
"       \  'copy' : {
"       \    '+' : s:win32yank..' -i --crlf',
"       \    '*' : s:win32yank..' -i --crlf',
"       \  },
"       \  'paste' : {
"       \    '+' : s:win32yank..' -o --lf',
"       \    '*' : s:win32yank..' -o --lf',
"       \  },
"       \}
" unlet s:win32yank
"
" In case I am in need of cursorcolumn later
" set cursorcolumn
" augroup cursor_off
"     autocmd!
"     autocmd WinLeave * set nocursorcolumn
"     autocmd WinEnter * set cursorline cursorcolumn
" augroup END
" autocmd InsertEnter,InsertLeave * set cul! cuc!

" Update sign column every quarter second
set updatetime=100

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
