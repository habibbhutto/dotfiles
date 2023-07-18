let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set t_Co=256

let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_background = 'hard'

let g:zenbones_italic_comments = v:false

set background=dark
colorscheme zenwritten

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg = bg
highlight LineNr guibg = bg
highlight CursorLineNr guibg = bg
highlight SignColumn ctermbg = NONE
highlight LineNr ctermbg = NONE
highlight CursorLineNr ctermbg = NONE

hi! VertSplit guifg=bg guibg=bg
