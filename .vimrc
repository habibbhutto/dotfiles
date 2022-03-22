source ~/.vim/plugins.vim
source ~/.vim/basics.vim
source ~/.vim/colorscheme.vim


nnoremap <silent> <leader>n :NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <silent> <F3> :NERDTreeToggle<cr>
nnoremap <silent> <C-p> :Files<cr>
" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

"inoremap jj <Esc>

nnoremap n nzz
nnoremap N Nzz

nnoremap Y y$
" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

if(has("nvim"))
    nnoremap <a-j> <c-w>j
    nnoremap <a-k> <c-w>k
    nnoremap <a-h> <c-w>h
    nnoremap <a-l> <c-w>l
endif
" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

if(has("nvim"))
    noremap <a-up> <c-w>+
    noremap <a-down> <c-w>-
    noremap <a-left> <c-w>>
    noremap <a-right> <c-w><
endif

noremap <c-S-UP> :m -2<cr>
noremap <c-S-Down> :m +1<cr>

nnoremap <c-s> <cmd>wa<cr>
inoremap <c-s> <cmd>wa<cr>
noremap <c-,> <cmd>bp<cr>
noremap <c-.> <cmd>bn<cr>


let $FZF_DEFAULT_COMMAND="find -L"
let g:NERDTreeShowHidden=1

source ~/.vim/lsp.vim

" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg
highlight LineNr guibg=bg
highlight LineNr ctermbg=bg
highlight CursorLineNr guibg=bg
highlight CursorLineNr ctermbg=bg

" Update sign column every quarter second
set updatetime=100
" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>gs <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)

"autocmd VimEnter * silent exec "! echo -ne '\e[2 q'"
"autocmd WinEnter * silent exec "! printf '\e[3 q\e]12;grey\\a'"
"autocmd FocusGained * silent exec "! printf '\e[3 q\e]12;grey\\a'"
"autocmd ModeChanged * silent exec "! printf '\e[2 q\e]12;grey\\a'"
function CursorUpdate()
    echo mode()
    if mode() == 'R'
        silent exec "! printf '\e[4 q'"
    endif
    if mode() == 'n'
        silent exec "! printf '\e[2 q'"
    endif
    if mode() == 'i'
        silent exec "! printf '\e[6 q'"
    endif
    if mode() == 'c'
        silent exec "! printf '\e[6 q'"
    endif
endfunction

if(!has("nvim"))
  autocmd ModeChanged * call CursorUpdate()
endif
