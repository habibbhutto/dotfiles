" Customize the defaults
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set nonumber
set norelativenumber
set cursorline
set shiftwidth=2
set tabstop=2
" set colorcolumn=80
set textwidth=80
set expandtab
set nobackup
set writebackup
set autoread
set noswapfile
set splitright
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
set cmdheight=2
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

" TODO: Send the prettier output to locallist
autocmd BufWritePost *.ts,*.js,*.json :!prettier --write %
autocmd BufWritePost *.yaml,*.yml,*.prettierrc :!prettier --write %
autocmd BufWritePost *.html,*.htm,*.css :!prettier --write %
autocmd BufWritePost *.jsx,*.lcss,*.less,*.scss :!prettier --write %

autocmd BufReadPost,FileReadPost * normal zR

