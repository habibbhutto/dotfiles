source ~/vim-fiddle/nvim/plugins.vim
source ~/vim-fiddle/nvim/basics.vim
source ~/vim-fiddle/nvim/colorscheme.vim
source ~/vim-fiddle/nvim/treesitter.vim
source ~/vim-fiddle/nvim/telescope.vim
source ~/vim-fiddle/nvim/keymaps.vim
" source ~/vim-fiddle/nvim/lsp.vim
" source ~/vim-fiddle/nvim/nvim-lsp.vim

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

let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1
let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_auto_focus = 0
let g:prettier#autoformat_config_files = [".prettierrc.js"]

set makeprg=$(npm\ bin)/eslint\ --fix  
"set makeprg=$(npm\ bin)/eslint\ --format\ compact\ --fix  
set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#

autocmd BufWritePost *.ts,js silent lmake % --fix --format compact | lwindow | checktime | call feedkeys("\`\`") " call feedkeys("\<C-o>")
" autocmd BufWritePost *.ts,js silent make % | edit %
" https://gist.github.com/romainl/2f748f0c0079769e9532924b117f9252
"
" Expriment
function! ClearTerminal()
  set scrollback=1
  let &g:scrollback=1
  echo &scrollback
  call feedkeys("\i")
  call feedkeys("clear\<CR>")
  call feedkeys("\<C-\>\<C-n>")
  call feedkeys("\i")
  sleep 100m
  let &scrollback=s:scroll_value
endfunction
