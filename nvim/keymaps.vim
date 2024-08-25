lua <<EOF
-- files keymap
vim.keymap.set('n', '<leader>e', '<CMD>call Startup()<BAR>NvimTreeToggle<CR>', { 
  desc = 'Toggle file tree',
  silent = true
})

vim.keymap.set('n', '<leader>ff', '<CMD>Files<CR>', { 
  desc = 'List files',
  silent = true
})

vim.keymap.set('n', '<leader>fb', '<CMD>Buffers<CR>', { 
  desc = 'List opened files',
  silent = true
})

vim.keymap.set('n', '<leader>fh', '<CMD>History<CR>', { 
  desc = 'List file history',
  silent = true
})

vim.keymap.set('n', '<leader>sf', '<CMD>Rg<CR>', { 
  desc = 'Search in all files',
  silent = true
})

vim.keymap.set({'n', 'v'}, '<leader>sa', 'yw<CMD>Rg<CR><CMD>put +<CR>', { 
  desc = 'Search word or selection in current working directory',
  silent = true
})

vim.keymap.set({'n', 'v'}, '<leader>ss', 'yw<CMD>BLines<CR><CMD>put +<CR>', { 
  desc = 'Search word or selection in current buffer',
  silent = true
})

-- git and git files
vim.keymap.set('n', '<leader>gg', '<CMD>Git<CR>', { 
  desc = 'Launch fugitive git window',
  silent = true
})

-- TODO: simplify this
vim.keymap.set('n', '<leader>fgg', '<CMD>GitFiles<CR>', { 
  desc = 'Search git files',
  silent = true
})

-- TODO: run inside the current file's directory
vim.keymap.set('n', '<leader>laz', '<CMD>tabnew <bar> term lazygit<CR>', { 
  desc = 'Launch lazygit in a new tab',
  silent = true
})

vim.keymap.set('n', '<leader>fgs', '<CMD>Git stash list<CR>', { 
  desc = 'List git stashes',
  silent = true
})

vim.keymap.set('n', '<leader>fgc', '<CMD>BCommits<CR>', { 
  desc = 'Show git commits for current file',
  silent = true
})

vim.keymap.set('n', '<leader>fgac', '<CMD>Commits<CR>', { 
  desc = 'Show git commits',
  silent = true
})

vim.keymap.set('n', '<leader>bb', '<CMD>Git branch --list<CR>', { 
  desc = 'List git branches',
  silent = true
})

function input_git_push() 
  vim.api.nvim_input(":Git push")
end

vim.keymap.set('n', '<leader>gp', input_git_push, { 
  desc = 'Populate CMD window with Git push',
  silent = true
})

vim.keymap.set({'n'}, '<C-K>', '<Plug>(GitGutterNextHunk)', { 
  desc = 'Jump to next hunk',
  silent = true
})

vim.keymap.set({'n'}, '<C-H>', '<CMD>GitGutterPrevHunk<CR>', { 
  desc = 'Jump to previous hunk',
  silent = true
})

-- code symbols and tags
vim.keymap.set('n', '<leader>tt', '<CMD>BTags<CR>', { 
  desc = 'List tags in current file',
  silent = true
})

vim.keymap.set('n', '<leader>ta', '<CMD>Tags<CR>', { 
  desc = 'List tags in current project',
  silent = true
})

-- Keymaps list
vim.keymap.set('n', '<leader>km', '<CMD>Telescope keymaps<CR>', { 
  desc = 'List keymaps',
  silent = true
})

-- Telescope when I need it
vim.keymap.set('n', '<leader>tl', '<CMD>Telescope<CR>', { 
  desc = 'Launch Telescope',
  silent = true
})

-- other useful keymaps
vim.keymap.set('n', '<leader><leader>', "<C-\><C-n><CMD>nohlsearch<CR>", { 
  desc = 'Run current jest test file',
  silent = true
})


vim.keymap.set('n', '<M-m>', ']m', { 
  desc = 'Jump to next method',
  silent = true
})

vim.keymap.set('n', '<M-S-m>', '[m', { 
  desc = 'Jump to previous method',
  silent = true
})


vim.keymap.set('n', 'n', 'nzz', { 
  desc = '',
  silent = true
})

vim.keymap.set('n', 'N', 'Nzz', { 
  desc = '',
  silent = true
})

vim.keymap.set('n', 'Y', 'y$', { 
  desc = '',
  silent = true
})

vim.keymap.set('n', 'O', 'O<Esc>', { 
  desc = '',
  silent = true
})

nnoremap o o<Esc>
vim.keymap.set('n', 'o', 'o<Esc>', { 
  desc = '',
  silent = true
})


vim.keymap.set('n', '', '<CMD><CR>', { 
  desc = '',
  silent = true
})

-- Switch window focus
vim.keymap.set({'t', 'n', 'i'}, '<M-h>', '<C-\><C-n><C-w>h', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-j>', '<C-\><C-n><C-w>j', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-k>', '<C-\><C-n><C-w>k', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-l>', '<C-\><C-n><C-w>l', {
  desc = '',
  silent = true
})

-- Switch buffers
vim.keymap.set({'t', 'n', 'i'}, '<M-h>', '<C-\><C-n><C-w>h', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-j>', '<C-\><C-n><C-w>j', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-k>', '<C-\><C-n><C-w>k', {
  desc = '',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-l>', '<C-\><C-n><C-w>l', {
  desc = '',
  silent = true
})

-- TODO: This got to be dynamic mapings
--       as I switch between qflist, cwindow, 
--       and locallists
-- " Navigate lists
-- nnoremap <silent> <C-n> :lnext<cr>
-- nnoremap <silent> <C-p> :lprevious<cr>
-- nnoremap <silent> [l :lfirst<cr>
-- nnoremap <silent> ]l :llast<cr>

-- auto commands
vim.api.nvim_create_autocmd("TermClose", {
    pattern = { "*lazygit" },
    callback = function()
       vim.cmd("close")
    end
})

-- TODO: Continue translating maps in vim to lua
-- TODO: Improve lazygit keymap, it got to find the git repo path for current file
-- TODO: Improve test runs mapings and mechanisms
-- TODO: Improve postgresql query run maps

EOF

" Switch buffers
" in normal mode
noremap <silent> <M-S-k> :bp<cr>
noremap <silent> <M-S-j> :bn<cr>
noremap <silent> <M-S-h> :bfirst<cr>
noremap <silent> <M-S-l> :blast<cr>
" in insert mode
inoremap <silent> <M-S-k> <C-\><C-n>:bp<cr>
inoremap <silent> <M-S-j> <C-\><C-n>:bn<cr>
inoremap <silent> <M-S-h> <C-\><C-n>:bfirst<cr>
inoremap <silent> <M-S-l> <C-\><C-n>:blast<cr>
" in terminal mode
tnoremap <silent> <M-S-k> <C-\><C-n>:bp<cr>
tnoremap <silent> <M-S-j> <C-\><C-n>:bn<cr>
tnoremap <silent> <M-S-h> <C-\><C-n>:bfirst<cr>
tnoremap <silent> <M-S-l> <C-\><C-n>:blast<cr>

" Resize windows
noremap <silent> <C-down> :resize +1<cr>
noremap <silent> <C-up> :resize -1<cr>
noremap <silent> <C-right> :vert resize +1<cr>
noremap <silent> <C-left> :vert resize -1<cr>

tnoremap <silent> <C-down> <C-\><C-n>:resize +1<cr>
tnoremap <silent> <C-up> <C-\><C-n>:resize -1<cr>
tnoremap <silent> <C-right> <C-\><C-n>:vert resize +1<cr>
tnoremap <silent> <C-left> <C-\><C-n>:vert resize -1<cr>

inoremap <silent> <M-PageUp> <C-\><C-n><PageUp>
inoremap <silent> <M-PageDown> <C-\><C-n><PageDown>
tnoremap <silent> <M-PageUp> <C-\><C-n><PageUp>
tnoremap <silent> <M-PageDown> <C-\><C-n><PageDown>

" Start a terminal at the bottom
noremap <silent> <leader>t :bot bel new<bar>term<cr>a

" Shift buffer lines up and down
noremap <M-up> :m -2<cr>
noremap <M-down> :m +1<cr>

" Save current buffer
nnoremap <leader>w <cmd>w<cr>
inoremap <C-s> <cmd>w<cr>


vmap RRC :!psql service=ContractProd -a -t -A<enter>
vmap RRL :!psql service=LoyaltyProd -a -t -A<enter>
vmap RRW :!psql service=WebshopProd -a -t -A<enter>
vmap RRT :!psql service=test-cdm -a -t -A<enter>
vmap RRTC :!psql service=test-contract -a <enter>
vmap RRTL :!psql service=test-loyalty -a <enter>
vmap RRTN :!psql service=test-newsletter -a <enter>
vmap JJJ :!jq<enter>

" noremap grt <cmd>bot term cd '%:h' && yarn test '%' 2>&1 <bar> tee %:t.log <CR>
"
"

lua <<EOF
-- TODO: generalize this for more ts, js, go, c, cpp, rust, v
vim.keymap.set('n', 'grtt', 
  "<cmd>lua vim.cmd('bel 10new | term cd ' .. vim.fs.dirname(vim.fs.find({'package.json'}, { upward = true, path = vim.fs.dirname(vim.api.nvim_buf_get_name(0)) })[1]) .. ' && jest --runInBand ' .. vim.api.nvim_buf_get_name(0))<cr>", { 
  desc = 'Run current jest test file',
  silent = true
})
EOF

noremap grt <cmd>bot term cd '%:h' && yarn jest tests/%:t 2>&1 <bar> tee %:t.log <CR>
noremap grtd <cmd>bot term cd '%:h' && yarn test:debug '%' 2>&1 <bar> tee %:t.log <CR>
noremap <leader>ttl <cmd>e %.log<cr>
noremap <leader>ttt <cmd>e %:p:h/tests/%:t:r.spec.ts<cr>
noremap <leader>ttf <cmd>e %:p:h:h/%:t:r:r.ts<cr>

noremap <leader>jjj :diffget //2 <bar> diffupdate<enter>
noremap <leader>kkk :diffget //3 <bar> diffupdate<enter>

" netrw cofig
let g:netrw_banner = 0
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'

hi! link netrwMarkFile Search

function! NetrwMapping()
  nmap <buffer> o <CR>

  nmap <buffer> . <CR> cd
  nmap <buffer> P <C-w>z

  nmap <buffer> <silent> <nowait> <BS>  <Plug>NetrwTreeSqueeze

  nmap <buffer> <TAB> mf
  nmap <buffer> <S-TAB> mF
  nmap <buffer> <Leader><TAB> mu
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
