source ~/vim-fiddle/nvim/plugins.vim
source ~/vim-fiddle/nvim/basics.vim
source ~/vim-fiddle/nvim/colorscheme.vim
" source ~/vim-fiddle/nvim/lsp.vim

nnoremap <silent> <C-p> :Files<cr>

"inoremap jj <Esc>

nnoremap n nzz
nnoremap N Nzz

nnoremap Y y$

tnoremap <C-w> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l
" 
" if(has("nvim"))
"     nnoremap <a-j> <c-w>j
"     nnoremap <a-k> <c-w>k
"     nnoremap <a-h> <c-w>h
"     nnoremap <a-l> <c-w>l
" endif
"
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

noremap <a-up> <c-w>+
noremap <a-down> <c-w>-
noremap <a-left> <c-w>>
noremap <a-right> <c-w><

noremap <c-S-UP> :m -2<cr>
noremap <c-S-Down> :m +1<cr>

nnoremap <c-s> <cmd>w<cr>
inoremap <c-s> <cmd>w<cr>
noremap <c-,> <cmd>bp<cr>
noremap <c-.> <cmd>bn<cr>


let $FZF_DEFAULT_COMMAND="find -L"

" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" Update sign column every quarter second
set updatetime=100
" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>gs <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
