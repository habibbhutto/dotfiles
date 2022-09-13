let mapleader = ","
nnoremap <leader>c :nohlsearch<CR>

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
" nnoremap <silent> <leader>t :Telescope<cr>

" Telescope Git
nnoremap <silent> <leader>gf :GitFiles<cr>
nnoremap <silent> <leader>gs :GitFiles?<cr>
nnoremap <silent> <leader>gst :Git stash list<cr>
nnoremap <silent> <leader>gc :BCommits<cr>
nnoremap <silent> <leader>gca :Commits<cr>
nnoremap <silent> <leader>gb :Git branch --list<cr>
nnoremap <silent> <leader>gg :Git<cr>
nnoremap <silent> <leader>gpp :Git push<cr>
nnoremap <silent> <leader>gpn :Git push --no-verify<cr>

" Jump between hunks
nmap [c <Plug>(GitGutterNextHunk)
nmap ]c <Plug>(GitGutterPrevHunk)

" Telescope Files
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>tt :Tags<cr>
nnoremap <silent> <leader>ll :Rg<cr>
nnoremap <silent> <leader>ws yw :Rg<cr><cmd>put +<cr>
nnoremap <silent> <leader>bs yw :BLines<cr><cmd>put +<cr>
nnoremap <silent> <leader>ttb :BTags<cr>
nnoremap <silent> <leader>tta <cmd>exec '!sh ~/dev/devx/add-tags.sh '.expand('<cword>').' '.expand('%').' "/^'.getline('.').'"'<cr>

"nnoremap <silent> <leader>lm <cmd>execute "vimgrep /async\\\|private\\\|\\s\\s\\s\\s[A-z]*(.*)\\s{\\\|\\s\\s\\s\\s[A-z]*():/ %" <bar>cwindow<cr>

nnoremap <silent> MM [m
nnoremap <silent> m ]m

nnoremap <silent> <C-n> :lnext<cr>zR
nnoremap <silent> <C-p> :lprevious<cr>zR
nnoremap <silent> [l :lfirst<cr>
nnoremap <silent> ]l :llast<cr>

inoremap jj <Esc>

nnoremap n nzz
nnoremap N Nzz

nnoremap Y y$
nnoremap O O<Esc>
nnoremap o o<Esc>

"tnoremap <silent> <C-w> <C-\><C-n>
tnoremap <silent> <leader><leader> <C-\><C-n>
tnoremap <silent> <M-left> <C-w>h
tnoremap <silent> <M-down> <C-w>j
tnoremap <silent> <M-up> <C-w>k
tnoremap <silent> <M-right> <C-w>l

inoremap <silent> <M-left> <C-\><C-N><C-w>h
inoremap <silent> <M-down> <C-\><C-N><C-w>j
inoremap <silent> <M-up> <C-\><C-N><C-w>k
inoremap <silent> <M-right> <C-\><C-N><C-w>l

nnoremap <silent> <M-left> <c-w>h
nnoremap <silent> <M-down> <c-w>j
nnoremap <silent> <M-up> <c-w>k
nnoremap <silent> <M-right> <c-w>l

noremap <silent> <M-k> <c-w>k<c-w>_
noremap <silent> <M-j> <c-w>j<c-w>_
noremap <silent> <M-h> <c-w>h<c-w><Bar>
noremap <silent> <M-l> <c-w>l<c-w><Bar>

tnoremap <silent> <M-k> <C-w>k<c-w>_
tnoremap <silent> <M-j> <C-w>j<c-w>_
tnoremap <silent> <M-h> <C-w>h<c-w><Bar>
tnoremap <silent> <M-l> <C-w>l<c-w><Bar>

noremap <silent> <C-down> <c-w>+
noremap <silent> <C-up> <c-w>-
noremap <silent> <C-right> <c-w>>
noremap <silent> <C-left> <c-w><

tnoremap <silent> <C-down> <c-w>+
tnoremap <silent> <C-up> <c-w>-
tnoremap <silent> <C-right> <c-w>>
tnoremap <silent> <C-left> <c-w><

noremap <silent> <leader>t :bot bel new<bar>term<cr>

noremap <C-S-UP> :m -2<cr>
noremap <C-S-Down> :m +1<cr>

nnoremap <C-s> <cmd>w<cr>
inoremap <C-s> <cmd>w<cr>

