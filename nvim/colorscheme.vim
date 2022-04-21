
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

let g:gruvbox_contrast_dark = 'dark'
let g:gruvbox_sign_column = "bg0"
let g:gruvbox_number_column = "bg0"
let g:gruvbox_color_column = "bg0"

let g:everforest_sign_column_background = 'none'
let g:everforest_background = 'hard'

" For dark version.
set background=dark

" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
" For better performance
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_transparent_background = 1

colorscheme gruvbox-material

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg = bg
highlight LineNr guibg = bg
highlight CursorLineNr guibg = bg
highlight SignColumn ctermbg = NONE
highlight LineNr ctermbg = NONE
highlight CursorLineNr ctermbg = NONE

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
"

" set guicursor=n-v-c:block-nCursor,i-ci-ve:ver25,r-cr:hor20,o:hor50
"     \,a:blinkwait200-blinkoff200-blinkon250-Cursor/lCursor
"     \,sm:block-blinkwait175-blinkoff150-blinkon175
