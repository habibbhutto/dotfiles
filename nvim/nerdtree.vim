
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
let g:NERDTreeShowHidden=1

nnoremap <silent> <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <silent> <F3> :NERDTreeToggle<cr>
