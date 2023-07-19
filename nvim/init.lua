vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[
    autocmd VimEnter * source ~/vim-fiddle/nvim/colorscheme.vim
]]);

vim.cmd 'source ~/vim-fiddle/nvim/plugins.vim'
vim.cmd 'source ~/vim-fiddle/nvim/basics.vim'
vim.cmd 'source ~/vim-fiddle/nvim/lazy-start.vim'
vim.cmd 'source ~/vim-fiddle/nvim/fzf.vim'
vim.cmd 'source ~/vim-fiddle/nvim/keymaps.vim'

