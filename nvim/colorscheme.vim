let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

lua require'colorizer'.setup()

function! OnColorSchemeChange()
  hi! VertSplit guibg=bg guifg=bg ctermbg=NONE ctermfg=NONE
  hi! EndOfBuffer guibg=bg guifg=bg ctermbg=NONE ctermfg=NONE
  " let &fillchars = 'vert:│,eob: '
  highlight SignColumn guibg=bg ctermbg=NONE
  highlight LineNr guibg=bg ctermbg=NONE

  " highlight CursorLineNr guibg=bg ctermbg=NONE

  highlight Constant gui=none
  highlight Comment gui=none
  highlight Number gui=none

  hi! StatusLine guibg=none guifg=fg gui=bold cterm=bold
  hi! StatusLineNC guibg=none guifg=fg gui=NONE cterm=NONE

  highlight GitGutterAdd    guifg=#008800 ctermfg=2
  highlight GitGutterChange guifg=#0077ff ctermfg=3
  highlight GitGutterDelete guifg=#dd000a ctermfg=1
endfunction

autocmd! ColorScheme * call OnColorSchemeChange()

let g:gruvbox_material_foreground='mix'
let g:gruvbox_material_background='medium'
let g:gruvbox_material_better_performance=1
let g:gruvbox_material_disable_italic_comment=1
let g:gruvbox_material_transparent_background=0

set bg=dark
colorscheme lunaperche
call OnColorSchemeChange()

" TODO: Follow system color scheme dark/light
" The idea is to get the color scheme info into an env variable
" then use that env variable in vim script to load dark/light profile
" [[ `gsettings get org.gnome.desktop.interface color-scheme` =~ 'dark' ]] && echo dark mode active || echo dark mode inactive
