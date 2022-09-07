" nnoremap <silent> ff :Files<cr>
" nnoremap <silent> fg :GitFiles<cr>
" nnoremap <silent> <leader>b :Buffers<cr>
" nnoremap <silent> ffg :Rg<cr>
" nnoremap <silent> tt :Tags<cr>
" nnoremap <silent> <leader>lg :Telescope live_grep<cr>
" nnoremap <silent> <leader>sg :Telescope grep_string<cr>
" nnoremap <silent> <leader>lm <cmd>execute "vimgrep /async\\\|private\\\|\\s\\s\\s\\s[A-z]*(.*)\\s{\\\|\\s\\s\\s\\s[A-z]*():/ %" <bar>cwindow<cr>
" nnoremap <silent> <leader>aa <cmd>exec '!sh add-tags.sh '.expand('<cword>').' '.expand('%').' "/^'.getline('.').'"'<cr>

" Telescope
nnoremap <silent> <leader>t :Telescope<cr>

" Telescope Git
nnoremap <silent> <leader>gf :Telescope git_files<cr>
nnoremap <silent> <leader>gs :Telescope git_status<cr>
nnoremap <silent> <leader>gst :Telescope git_stash<cr>
nnoremap <silent> <leader>gc :Telescope git_bcommits<cr>
nnoremap <silent> <leader>gca :Telescope git_commits<cr>
nnoremap <silent> <leader>gb :Telescope git_branches<cr>

" Telescope Files
nnoremap <silent> <leader>ff :Telescope find_files<cr>
nnoremap <silent> <leader>fb :Telescope buffers<cr>
nnoremap <silent> <leader>tt :Telescope tags<cr>
nnoremap <silent> <leader>fs :Telescope live_grep<cr>
nnoremap <silent> <leader>ss :Telescope grep_string<cr>
nnoremap <silent> <leader>. :Telescope treesitter<cr>
nnoremap <silent> <leader>tta <cmd>exec '!sh ~/dev/devx/add-tags.sh '.expand('<cword>').' '.expand('%').' "/^'.getline('.').'"'<cr>

"nnoremap <silent> <leader>lm <cmd>execute "vimgrep /async\\\|private\\\|\\s\\s\\s\\s[A-z]*(.*)\\s{\\\|\\s\\s\\s\\s[A-z]*():/ %" <bar>cwindow<cr>

inoremap jj <Esc>

nnoremap n nzz
nnoremap N Nzz

nnoremap Y y$
nnoremap O O<Esc>
nnoremap o o<Esc>

"tnoremap <silent> <C-w> <C-\><C-n>
tnoremap <silent> <leader><leader> <C-\><C-n>
tnoremap <silent> <A-h> <C-\><C-N><C-w>h
tnoremap <silent> <A-j> <C-\><C-N><C-w>j
tnoremap <silent> <A-k> <C-\><C-N><C-w>k
tnoremap <silent> <A-l> <C-\><C-N><C-w>l

inoremap <silent> <A-h> <C-\><C-N><C-w>h
inoremap <silent> <A-j> <C-\><C-N><C-w>j
inoremap <silent> <A-k> <C-\><C-N><C-w>k
inoremap <silent> <A-l> <C-\><C-N><C-w>l

nnoremap <silent> <A-h> <C-w>h
nnoremap <silent> <A-j> <C-w>j
nnoremap <silent> <A-k> <C-w>k
nnoremap <silent> <A-l> <C-w>l

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

