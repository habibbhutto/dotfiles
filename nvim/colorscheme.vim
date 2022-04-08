
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvm"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_Co=256

let g:gruvbox_contrast_dark='medium'
let g:gruvbox_contrast_dark='dark'
let g:gruvbox_sign_column="bg0"
let g:gruvbox_number_column="bg0"
let g:gruvbox_color_column="bg0"

let g:everforest_sign_column_background = 'none'
let g:everforest_background = 'hard'

colorscheme everforest

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight LineNr guibg=bg
highlight CursorLineNr guibg=bg
highlight SignColumn ctermbg=bg
highlight LineNr ctermbg=bg
highlight CursorLineNr ctermbg=bg

" let g:airline_theme = 'onehalfdark'
" let g:airline_theme = 'everforest'
" "
" let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" "
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" "
" " let g:airline_symbols.colnr = ' ㏇:'
" let g:airline_symbols.colnr = ''

