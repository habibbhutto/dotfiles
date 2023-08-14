let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set t_Co=256

lua require'colorizer'.setup()

function! OnColorSchemeChange()
  hi! VertSplit guibg=bg ctermbg=NONE
"  let &fillchars = 'vert:│,eob: '
  highlight SignColumn guibg=bg ctermbg=NONE
  highlight LineNr guibg=bg ctermbg=NONE
  highlight CursorLineNr guibg=bg ctermbg=NONE
endfunction

autocmd ColorScheme * call OnColorSchemeChange()

let g:gruvbox_material_foreground='mix'
let g:gruvbox_material_background='medium'
let g:gruvbox_material_better_performance=1

set background=dark
colorscheme duskfox

call OnColorSchemeChange()
