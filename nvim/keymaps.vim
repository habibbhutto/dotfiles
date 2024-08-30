lua <<EOF
-- TODO: Improve lazygit keymap, it got to find the git repo path for current file
-- TODO: Improve test runs mapings and mechanisms
-- TODO: Improve postgresql query run maps

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

vim.keymap.set({'n'}, '<C-J>', '<Plug>(GitGutterNextHunk)', { 
  desc = 'Jump to next hunk',
  silent = true
})

vim.keymap.set({'n'}, '<C-K>', '<CMD>GitGutterPrevHunk<CR>', { 
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
vim.keymap.set({'n', 'i', 't'}, '<leader><leader>', '<C-Bslash><C-n><CMD>nohlsearch<CR>', { 
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

-- It seems, I don't need it for neovim
-- vim.keymap.set('n', 'n', 'nzz', { 
--   desc = '',
--   silent = true
-- })
--
-- vim.keymap.set('n', 'N', 'Nzz', { 
--   desc = '',
--   silent = true
-- })

vim.keymap.set('n', 'Y', 'y$', { 
  desc = 'Copy from here until the end of line',
  silent = true
})

vim.keymap.set('n', 'O', 'O<Esc>', { 
  desc = 'Insert a line above',
  silent = true
})

vim.keymap.set('n', 'o', 'o<Esc>', { 
  desc = 'Insert a line below',
  silent = true
})

-- Switch window focus
vim.keymap.set({'t', 'n', 'i'}, '<M-h>', '<C-Bslash><C-n><C-w>h', {
  desc = 'To window on left',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-j>', '<C-Bslash><C-n><C-w>j', {
  desc = 'To window below',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-k>', '<C-Bslash><C-n><C-w>k', {
  desc = 'To window above',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-l>', '<C-Bslash><C-n><C-w>l', {
  desc = 'To window on right',
  silent = true
})

-- Switch windows
-- vim.keymap.set({'t', 'n', 'i'}, '<M-h>', '<C-Bslash><C-n><C-w>h', {
--   desc = '',
--   silent = true
-- })
-- vim.keymap.set({'t', 'n', 'i'}, '<M-j>', '<C-Bslash><C-n><C-w>j', {
--   desc = '',
--   silent = true
-- })
-- vim.keymap.set({'t', 'n', 'i'}, '<M-k>', '<C-Bslash><C-n><C-w>k', {
--   desc = '',
--   silent = true
-- })
-- vim.keymap.set({'t', 'n', 'i'}, '<M-l>', '<C-Bslash><C-n><C-w>l', {
--   desc = '',
--   silent = true
-- })

-- Switch buffers
vim.keymap.set({'t', 'n', 'i'}, '<M-S-k>', '<C-Bslash><C-n><CMD>bp<CR>', {
  desc = 'Previous buffer',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-S-j>', '<C-Bslash><C-n><CMD>bn<CR>', {
  desc = 'Next buffer',
  silent = true
})

vim.keymap.set({'t', 'n', 'i'}, '<M-S-h>', '<C-Bslash><C-n><CMD>bfirst<CR>', {
  desc = 'First buffer',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<M-S-l>', '<C-Bslash><C-n><CMD>blast<CR>', {
  desc = 'Last buffer',
  silent = true
})

-- resize windows
vim.keymap.set({'t', 'n', 'i'}, '<C-down>', '<C-Bslash><C-n><CMD>resize +1<CR>', {
  desc = 'Increase window height',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<C-up>', '<C-Bslash><C-n><CMD>resize -1<CR>', {
  desc = 'Descrease window height',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<C-right>', '<C-Bslash><C-n><CMD>vert resize +1<CR>', {
  desc = 'Increase window width',
  silent = true
})
vim.keymap.set({'t', 'n', 'i'}, '<C-left>', '<C-Bslash><C-n><CMD>vert resize -1<CR>', {
  desc = 'Descrease window width',
  silent = true
})

-- Shift buffer lines up and down
vim.keymap.set('n', '<M-up>', '<CMD>m -2<CR>', { 
  desc = 'Shift buffer lines up',
  silent = true
})
vim.keymap.set('n', '<M-down>', '<CMD>m +1<CR>', { 
  desc = 'Shift buffer lines down',
  silent = true
})

-- Save current buffer
vim.keymap.set('n', '<leader>w', '<CMD>w<CR>', { 
  desc = 'Save current file',
  silent = true
})
vim.keymap.set('n', '<C-s>', '<CMD>w<CR>', { 
  desc = 'Save current file',
  silent = true
})
vim.keymap.set('n', '<leader>dd', '<CMD>bd!<CR>', { 
  desc = 'Delete current buffer - discards changes',
  silent = true
})

function term_in_current_project()
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_file_path = vim.fs.dirname(current_file)
    local opts = { upward = true, path = current_file_path }
    local project_dir = vim.fs.dirname(vim.fs.find({'package.json'}, opts)[1])
    vim.system({ 'tmux', 'split-window', '-c', project_dir }, { text = true }):wait()
end
-- start a terminal at the bottom
vim.keymap.set('n', '<leader>term', term_in_current_project, { 
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

-- git merge tools keymaps
-- TODO: enable these kepmaps for diff buffers only
-- fugitive
vim.keymap.set('n', '<leader>jjj', '<CMD>diffget //2 <bar> diffupdate<CR>', { 
  desc = '',
  silent = true
})
vim.keymap.set('n', '<leader>kkk', '<CMD>diffget //3 <bar> diffupdate<CR>', { 
  desc = '',
  silent = true
})

-- When running `git mergetools --tool=nvimdiff`
vim.keymap.set('n', '<leader>rr', '<CMD>diffget RE <bar> diffupdate<CR>', { 
  desc = 'Get the changes from remote',
  silent = true
})
vim.keymap.set('n', '<leader>ll', '<CMD>diffget LO <bar> diffupdate<CR>', { 
  desc = 'Get the changes from local',
  silent = true
})
vim.keymap.set('n', '<leader>bb', '<CMD>diffget BA <bar> diffupdate<CR>', { 
  desc = 'Get the changes from base',
  silent = true
})

-- Test Run
-- TODO: generalize this for more ts, js, go, c, cpp, rust, v
function jest_current_file_v1(jest_opts)
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_file_path = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
    local opts = { upward = true, path = current_file_path }
    local project_dir = vim.fs.dirname(vim.fs.find({'package.json'}, opts)[1])
    vim.cmd('bel 10new | term cd ' .. project_dir .. ' && jest --runInBand ' .. jest_opts .. current_file)
end

function jest_current_file_v2(jest_opts)
    jest_opts = jest_opts == nil and '' or jest_opts;
    local current_file = vim.api.nvim_buf_get_name(0)
    local current_file_path = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
    local opts = { upward = true, path = current_file_path }
    local project_dir = vim.fs.dirname(vim.fs.find({'package.json'}, opts)[1])
    local test_cmd = {'jest', '--runInBand', jest_opts, current_file }
          test_cmd = string.format("%s; exec bash", table.concat(test_cmd, " "))
    vim.system({ 'tmux', 'split-window', '-c', project_dir, test_cmd, }, { text = true }):wait()
end

vim.keymap.set('n', '<leader>test', function ()
  jest_current_file_v2()
end, { 
  desc = 'Run current jest test file',
  silent = true
})
vim.keymap.set('n', '<leader>ttest', function ()
  jest_current_file_v2('--watch')
end, { 
  desc = 'Run current jest test file',
  silent = true
})

-- TODO: reconfigure in lua with sensible maps
-- " noremap grt <cmd>bot term cd '%:h' && yarn test '%' 2>&1 <bar> tee %:t.log <CR>
-- noremap grt <cmd>bot term cd '%:h' && yarn jest tests/%:t 2>&1 <bar> tee %:t.log <CR>
-- " noremap grtd <cmd>bot term cd '%:h' && yarn test:debug '%' 2>&1 <bar> tee %:t.log <CR>
-- cdm context specific
vim.keymap.set('n', '<leader>ttl', '<CMD>e %.log<CR>', { 
  desc = 'Open run log file of current spec file',
  silent = true
})
vim.keymap.set('n', '<leader>ttt', '<CMD>e %:p:h/tests/%:t:r.spec.ts<CR>', { 
  desc = 'Open spec file of current file file',
  silent = true
})
vim.keymap.set('n', '<leader>ttf', '<CMD>e %:p:h:h/%:t:r:r.ts<CR>', { 
  desc = 'Open source file of current spec file',
  silent = true
})

-- PSQL query run
vim.keymap.set('v', '<leader>sqlc', '<CMD>psql service=ContractProd -a -t -A<CR>', { 
  desc = 'send query to Contract Prod',
  silent = true
})
vim.keymap.set('v', '<leader>sqll', '<CMD>psql service=LoyaltyProd -a -t -A<CR>', { 
  desc = 'send query to Loyalty Prod',
  silent = true
})
vim.keymap.set('v', '<leader>sqlw', '<CMD>psql service=WebshopProd -a -t -A<CR>', { 
  desc = 'send query to Webshop Prod',
  silent = true
})
vim.keymap.set('v', '<leader>sqlt', '<CMD>psql service=test-cdm -a -t -A<CR>', { 
  desc = 'send query to test cdm',
  silent = true
})
vim.keymap.set('v', '<leader>sqltc', '<CMD>psql service=test-contract -a -t -A<CR>', { 
  desc = 'send query to test contract',
  silent = true
})
vim.keymap.set('v', '<leader>sqltl', '<CMD>psql service=test-loyalty -a -t -A<CR>', { 
  desc = 'send query to test Loyalty',
  silent = true
})
vim.keymap.set('v', '<leader>sqltn', '<CMD>psql service=ContractProd -a -t -A<CR>', { 
  desc = 'send query to test test newsletter',
  silent = true
})
vim.keymap.set('v', '<leader>jq', '<CMD>!jq<CR>', { 
  desc = 'format json with jq',
  silent = true
})

-- auto commands
vim.api.nvim_create_autocmd("TermClose", {
    pattern = { "*lazygit" },
    callback = function()
       vim.cmd("close")
    end
})

EOF

