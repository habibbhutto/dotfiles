vim.cmd([[
    autocmd VimEnter * source ~/vim-fiddle/nvim/colorscheme.vim
    autocmd VimEnter * lua require('neotree')
    autocmd VimEnter * lua require('telescope-config')
    autocmd VimEnter * lua require('treesitter')
    autocmd VimEnter * lua require('nvim-lsp')
]]);

vim.cmd 'source ~/vim-fiddle/nvim/plugins.vim'
vim.cmd 'source ~/vim-fiddle/nvim/basics.vim'
vim.cmd 'source ~/vim-fiddle/nvim/fzf.vim'
vim.cmd 'source ~/vim-fiddle/nvim/keymaps.vim'

