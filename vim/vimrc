source ~/vim-fiddle/vim/plugins.vim
source ~/vim-fiddle/vim/basics.vim
source ~/vim-fiddle/vim/colorscheme.vim
source ~/vim-fiddle/vim/keymaps.vim
" source ~/vim-fiddle/vim/lsp.vim

" Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }
let g:fzf_preview_window = ['up:75%', 'ctrl-/']
let $FZF_DEFAULT_COMMAND="fdfind --hidden --no-ignore --ignore-case --follow"
let $FZF_PREVIEW_COMMAND="cat -n {}"
let $FZF_DEFAULT_OPTS="--bind ctrl-y:preview-up,ctrl-e:preview-down,
 \ctrl-b:preview-page-up,ctrl-f:preview-page-down,
 \ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
 \shift-up:preview-top,shift-down:preview-bottom,
 \alt-up:half-page-up,alt-down:half-page-down"

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setloclist(0, map(copy(a:lines), '{ "filename": v:val }'))
  lopen
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-s': 'vsplit' }
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
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

let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_auto_focus = 1
" let g:prettier#autoformat = 0
" let g:prettier#autoformat_require_pragma = 0
" let g:prettier#exec_cmd_async = 1
" let g:prettier#autoformat_config_present = 1

set foldmethod=indent
set foldexpr=indent()
