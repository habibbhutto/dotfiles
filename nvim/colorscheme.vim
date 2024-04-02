let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

lua require'colorizer'.setup()

function! OnColorSchemeChange()
  hi! VertSplit guibg=bg guifg=bg ctermbg=NONE ctermfg=NONE
  hi! EndOfBuffer guibg=bg guifg=bg ctermbg=NONE ctermfg=NONE
  " let &fillchars = 'vert:│,eob: '
  highlight SignColumn guibg=bg ctermbg=NONE
  highlight LineNr guibg=bg ctermbg=NONE guifg=grey

  " highlight CursorLineNr guibg=bg ctermbg=NONE

  highlight Constant gui=none
  highlight Comment gui=none
  highlight Number gui=none

  hi! StatusLine guibg=none guifg=fg gui=bold cterm=bold
  hi! StatusLineNC guibg=none guifg=fg gui=NONE cterm=NONE

  hi! FloatBorder guifg=fg guibg=none
  hi! NvimTreeNormalFloat guibg=bg
  hi! TabLineFill guibg=bg gui=none
  hi! TabLine gui=none guibg=bg guifg=fg 
  hi! TabLineSel gui=bold guibg=fg guifg=bg 

  hi! NvimTreeSpecialFile guifg=fg gui=bold
  hi! NvimTreeExecFile guifg=fg gui=bold

" if &background ==# 'dark'
"   hi! Normal guibg=#202020
"   hi! LineNr guibg=#202020
"   hi! TabLineSel guibg=#202020 guifg=fg
" endif

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

let themeStyle = system("[[ `gsettings get org.gnome.desktop.interface color-scheme` =~ 'dark' ]] && 'dark' || 'light'") 

if themeStyle =~ 'dark' 
  set bg=dark
else
  set bg=light
endif 

colorscheme lunaperche
call OnColorSchemeChange()

let g:neovide_scale_factor=1
let g:neovide_theme = 'auto'

" TODO: Follow system color scheme dark/light
" The idea is to get the color scheme info into an env variable
" then use that env variable in vim script to load dark/light profile
" [[ `gsettings get org.gnome.desktop.interface color-scheme` =~ 'dark' ]] && echo dark mode active || echo dark mode inactive
