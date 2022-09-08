source ~/vim-fiddle/nvim/plugins.vim
source ~/vim-fiddle/nvim/basics.vim
source ~/vim-fiddle/nvim/colorscheme.vim
source ~/vim-fiddle/nvim/treesitter.vim
source ~/vim-fiddle/nvim/telescope.vim
source ~/vim-fiddle/nvim/keymaps.vim
" source ~/vim-fiddle/nvim/lsp.vim
" source ~/vim-fiddle/nvim/nvim-lsp.vim

" Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.50 } }
" let g:fzf_preview_window = ['down:70%', 'ctrl-/']

let $FZF_DEFAULT_COMMAND="find -L"
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'up:50%:hidden' --preview 'bat --color=always --style=header,grid,numbers --line-range :300 {}'
\ --bind ctrl-y:preview-up,ctrl-e:preview-down,
\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
\ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
\shift-up:preview-top,shift-down:preview-bottom,
\alt-up:half-page-up,alt-down:half-page-down"

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

" let g:prettier#autoformat = 0
" let g:prettier#autoformat_require_pragma = 0
" let g:prettier#exec_cmd_async = 1
" let g:prettier#autoformat_config_present = 1
