set termguicolors
set t_Co=256

set background=dark

" For light version.
" set background=light
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_sign_column = "bg0"
let g:gruvbox_number_column = "bg0"
let g:gruvbox_color_column = "bg0"
let g:gruvbox_invert_selection = 0
let g:gruvbox_improved_warnings = 0
let g:gruvbox_improved_strings = 0
let g:gruvbox_transparent_bg = 1
let g:gruvbox_invert_signs = 0
let g:gruvbox_bold = 0

" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_enable_bold = 0
let g:gruvbox_material_disable_italic_comment = 1

let g:everforest_sign_column_background = 'none'
let g:everforest_background = 'medium'
let g:everforest_transparent_background = 0

set background = dark
colorscheme gruvbox-material

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg = bg
highlight LineNr guibg = bg
highlight CursorLineNr guibg = bg
highlight SignColumn ctermbg = NONE
highlight LineNr ctermbg = NONE
highlight CursorLineNr ctermbg = NONE

set guifont=Fira\ Code:h10

" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).
"
" SI = INSERT mode
" SR = REPLACE mode
" EI = NORMAL mode (ELSE)

let &t_SI = "\e[6 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[2 q"

function CursorUpdate()
     if mode(1) == "R"
       let &t_SR = "\e[4 q"
       return
     endif
     if mode() == "n"
       let &t_SI = "\e[6 q"
       let &t_SR = "\e[3 q"
       let &t_EI = "\e[2 q"
       return
     endif
endfunction
 
autocmd ModeChanged * call CursorUpdate()
 
