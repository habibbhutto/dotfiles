vim.loader.enable()

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[
   autocmd VimEnter * source ~/vim-fiddle/nvim/colorscheme.vim
   autocmd VimEnter * call Startup()
   " Disabling it for now as it's seems slower
   " autocmd VimEnter * lua require('treesitter')
   autocmd VimEnter * lua require('tree')
   autocmd VimEnter * call ToggleZenMode()
]]);

vim.cmd 'source ~/vim-fiddle/nvim/plugins.vim'
vim.cmd 'source ~/vim-fiddle/nvim/basics.vim'
vim.cmd 'source ~/vim-fiddle/nvim/lazy-start.vim'
vim.cmd 'source ~/vim-fiddle/nvim/fzf.vim'
vim.cmd 'source ~/vim-fiddle/nvim/keymaps.vim'

