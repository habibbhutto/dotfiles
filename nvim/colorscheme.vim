let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set t_Co=256

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

" For dark version.
set background=dark
" For light version.
" set background=light
colorscheme gruvbox-material

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg = bg
highlight LineNr guibg = bg
highlight CursorLineNr guibg = bg
highlight SignColumn ctermbg = NONE
highlight LineNr ctermbg = NONE
highlight CursorLineNr ctermbg = NONE

set guifont=Fira\ Code:h10

if exists("g:neovide")
    " pixiedust
    let g:neovide_cursor_vfx_mode = ""
    nnoremap <silent> <F11> :call ToggleFullScreen()<cr>

lua << EOF
  vim.cmd([[
    " system clipboard
    nmap <c-c> "+y
    vmap <c-c> "+y
    nmap <S-insert> "+p
    inoremap <S-insert> <c-r>+
    cnoremap <S-insert> <c-r>+
    " use <c-r> to insert original character without triggering things like auto-pairs
    inoremap <c-r> <S-insert>
  ]])
EOF

function ToggleFullScreen()
  if exists("g:neovide")
    if (g:neovide_fullscreen == v:true)
      let g:neovide_fullscreen = v:false
    else
      let g:neovide_fullscreen = v:true
    endif
  endif
endfunction

endif
