" Customize the defaults
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set shiftwidth=2
set tabstop=2
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
set noshowmode
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set ttyfast
set encoding=utf-8
set timeout timeoutlen=500 ttimeoutlen=30
set cmdheight=1
set cmdwinheight=10
set keywordprg=:help
set updatetime=50
set foldmethod=indent
set foldlevel=99
set laststatus=2
let mapleader = ","

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
augroup cursor_off
    autocmd!
"    autocmd WinLeave * set nocursorcolumn
"    autocmd WinEnter * set cursorline
augroup END
" autocmd InsertEnter,InsertLeave * set cul! cuc!

" TODO: Send the prettier output to locallist
" TODO: Run it in a separate async thread 
autocmd BufWritePost *.ts,*.js,*.json :!prettier --write %
autocmd BufWritePost *.yaml,*.yml,*.prettierrc :!prettier --write %
autocmd BufWritePost *.html,*.htm,*.css :!prettier --write %
autocmd BufWritePost *.jsx,*.lcss,*.less,*.scss :!prettier --write %

" autocmd BufReadPost,FileReadPost,BufWinEnter,BufNew,BufAdd * normal :set foldlevel=99
autocmd BufReadPost,FileReadPost * normal :set foldlevel=99


" netrw cofig
let g:netrw_banner = 0
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'

hi! link netrwMarkFile Search


function! NetrwMapping()
  nmap <buffer> o <CR>

  nmap <buffer> . cd
  nmap <buffer> P <C-w>z

  nmap <buffer> <silent> <nowait> <BS>  <Plug>NetrwTreeSqueeze

  nmap <buffer> <TAB> mf
  nmap <buffer> <S-TAB> mF
  nmap <buffer> <Leader><TAB> mu
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

set number
set relativenumber
set numberwidth=4
set signcolumn=yes

let s:CenterLayout=0
function! CenterLayoutToggle()
  if s:CenterLayout == 0
    let s:CenterLayout = 1

    " suitable for the long lines
    bufdo set numberwidth=15
    bufdo set signcolumn=yes
  elseif s:CenterLayout == 1
    let s:CenterLayout = 2

    " suitable for no so long lines
    bufdo set numberwidth=20
    bufdo set signcolumn=yes:9
  elseif s:CenterLayout == 2
    let s:CenterLayout = 0

    " bring it back to defaults
    " suitable for long long lines
    bufdo set numberwidth=4
    bufdo set signcolumn=yes
  endif
endfunction

nnoremap <silent> <leader>kc :call CenterLayoutToggle()<cr>

let s:zen_mode = 0
function! ToggleZenMode()
    if s:zen_mode  == 0
        let s:zen_mode = 1
        set noruler
        set laststatus=0
        set noshowcmd
        set cmdheight=1
        hi! LineNr guifg=bg
        GitGutterSignsDisable
    else
        let s:zen_mode = 0
        set ruler
        set laststatus=2
        set showcmd
        set cmdheight=1
        color zenwritten
        GitGutterSignsEnable
    endif
endfunction

nnoremap <silent> <leader>kz :call ToggleZenMode()<cr>

let s:wordwrap = 0
function! ToggleWordWrap()
    if s:wordwrap  == 0
        let s:wordwrap  = 1
        set wrap
    else
        let s:wordwrap  = 0
        set nowrap
    endif
endfunction

nnoremap <silent> <M-z> :call ToggleWordWrap()<cr>
