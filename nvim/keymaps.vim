let mapleader = ","
nnoremap <silent> <leader>c :nohlsearch<CR>

" Telescope
nnoremap <silent> <leader>tl :Telescope<cr>

" Git
nnoremap <silent> <leader>gf :GitFiles<cr>
nnoremap <silent> <leader>gs :GitFiles?<cr>
nnoremap <silent> <leader>gst :Git stash list<cr>
nnoremap <silent> <leader>gc :BCommits<cr>
nnoremap <silent> <leader>gca :Commits<cr>
nnoremap <silent> <leader>gb :Git branch --list<cr>
nnoremap <silent> <leader>g :Git<cr>
nnoremap <leader>pp :Git push

" Jump between hunks
nmap [c <Plug>(GitGutterNextHunk)
nmap ]c <Plug>(GitGutterPrevHunk)

" Files and search
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>tt :Tags<cr>
nnoremap <silent> <leader>l :Rg<cr>
nnoremap <silent> <leader>ws yw :Rg<cr><cmd>put +<cr>
nnoremap <silent> <leader>bs yw :BLines<cr><cmd>put +<cr>
nnoremap <silent> <leader>tb :BTags<cr>

nnoremap <silent> <space><space> :call StartupStuff()<bar>NvimTreeOpen<cr>
nnoremap <silent> <space>g :Neotree focus float<cr>

" Jump to next and previous method
nnoremap <silent> <M-m> [m
nnoremap <silent> m ]m

" Navigate lists
nnoremap <silent> <C-n> :lnext<cr>zR
nnoremap <silent> <C-p> :lprevious<cr>zR
nnoremap <silent> [l :lfirst<cr>
nnoremap <silent> ]l :llast<cr>

nnoremap n nzz
nnoremap N Nzz

nnoremap Y y$
nnoremap O O<Esc>
nnoremap o o<Esc>

" Switch window focus
" in terminal mode
tnoremap <silent> <leader><leader> <C-\><C-n>
tnoremap <silent> <M-S-h> <C-\><C-n><C-w>h
tnoremap <silent> <M-S-j> <C-\><C-n><C-w>j
tnoremap <silent> <M-S-k> <C-\><C-n><C-w>k
tnoremap <silent> <M-S-l> <C-\><C-n><C-w>l
" in insert mode
inoremap <silent> <M-S-h> <C-\><C-n><C-w>h
inoremap <silent> <M-S-j> <C-\><C-n><C-w>j
inoremap <silent> <M-S-k> <C-\><C-n><C-w>k
inoremap <silent> <M-S-l> <C-\><C-n><C-w>l
" in normal mode
nnoremap <silent> <M-S-h> <c-w>h
nnoremap <silent> <M-S-j> <c-w>j
nnoremap <silent> <M-S-k> <c-w>k
nnoremap <silent> <M-S-l> <c-w>l

" Switch window focus and maximize windows
" in normal mode
noremap <silent> <M-k> <c-w>k:resize<cr>
noremap <silent> <M-j> <c-w>j:resize<cr>
noremap <silent> <M-h> <c-w>h:vert resize<cr>
noremap <silent> <M-l> <c-w>l:vert resize<cr>
" in insert mode
inoremap <silent> <M-k> <C-\><C-n><c-w>k:resize<cr>
inoremap <silent> <M-j> <C-\><C-n><c-w>j:resize<cr>
inoremap <silent> <M-h> <C-\><C-n><c-w>h:vert resize<cr>
inoremap <silent> <M-l> <C-\><C-n><c-w>l:vert resize<cr>
" in terminal mode
tnoremap <silent> <M-k> <C-\><C-n><C-w>k:resize<cr>
tnoremap <silent> <M-j> <C-\><C-n><C-w>j:resize<cr>
tnoremap <silent> <M-h> <C-\><C-n><C-w>h:vert resize<cr>
tnoremap <silent> <M-l> <C-\><C-n><C-w>l:vert resize<cr>

" Resize windows
noremap <silent> <C-down> :resize +1<cr>
noremap <silent> <C-up> :resize -1<cr>
noremap <silent> <C-right> :vert resize +1<cr>
noremap <silent> <C-left> :vert resize -1<cr>

tnoremap <silent> <C-down> :resize +1<cr>
tnoremap <silent> <C-up> :resize -1<cr>
tnoremap <silent> <C-right> :vert resize +1<cr>
tnoremap <silent> <C-left> :vert resize -1<cr>

" Start a terminal at the bottom
noremap <silent> <leader>t :bot bel new<bar>term<cr>

" Shift buffer lines up and down
noremap <M-up> :m -2<cr>
noremap <M-down> :m +1<cr>

" Save current buffer
nnoremap <leader>w <cmd>w<cr>
inoremap <C-s> <cmd>w<cr>

