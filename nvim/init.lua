vim.cmd([[
    autocmd VimEnter * source ~/vim-fiddle/nvim/colorscheme.vim
    autocmd VimEnter * lua require('telescope')
    autocmd VimEnter * lua require('treesitter')
    autocmd VimEnter * lua require('nvim-lsp')
]]);

vim.cmd 'source ~/vim-fiddle/nvim/plugins.vim'
vim.cmd 'source ~/vim-fiddle/nvim/basics.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/colorscheme.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/treesitter.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/telescope.vim'
vim.cmd 'source ~/vim-fiddle/nvim/fzf.vim'
vim.cmd 'source ~/vim-fiddle/nvim/keymaps.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/nvim-lsp.vim'


