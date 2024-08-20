-- vim.loader.enable()
-- 
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- 
-- vim.cmd([[
--    autocmd VimEnter * source ~/vim-fiddle/nvim/colorscheme.vim
--    autocmd VimEnter * call Startup()
--    " Disabling it for now as it's seems slower
--    " autocmd VimEnter * lua require('treesitter')
--    autocmd VimEnter * lua require('tree')
--    " autocmd VimEnter * call ToggleZenMode()
-- ]]);
-- 
-- vim.cmd 'source ~/vim-fiddle/nvim/plugins.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/basics.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/lazy-start.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/fzf.vim'
-- vim.cmd 'source ~/vim-fiddle/nvim/keymaps.vim'
-- 
-- vim.api.diff basic.vim init.lua
--


vim.cmd.set("nocompatible")
vim.cmd.filetype("plugin on")
vim.cmd.filetype("indent on")
vim.cmd.syntax("on")

vim.cmd.set("shiftwidth=2")
vim.cmd.set("tabstop=2")
vim.cmd.set("expandtab")
vim.cmd.set("nobackup")
vim.cmd.set("writebackup")
vim.cmd.set("autoread")
vim.cmd.set("noswapfile")
vim.cmd.set("splitright")
vim.cmd.set("scrolloff=1")
vim.cmd.set("nowrap")
vim.cmd.set("incsearch")
vim.cmd.set("ignorecase")
vim.cmd.set("smartcase")
vim.cmd.set("noshowcmd")
vim.cmd.set("noshowmode")
vim.cmd.set("hlsearch")
vim.cmd.set("history=1000")
vim.cmd.set("wildmenu")
vim.cmd.set("wildmode=list:longest")
vim.cmd.set("wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx")
vim.cmd.set("ttyfast")
vim.cmd.set("encoding=utf-8")
vim.cmd.set("timeout timeoutlen=500 ttimeoutlen=30 ")
vim.cmd.set("cmdheight=1")
vim.cmd.set("cmdwinheight=10")
vim.cmd.set("keywordprg=:help")
vim.cmd.set("updatetime=50")
vim.cmd.set("foldmethod=indent")
vim.cmd.set("foldlevel=99")
vim.cmd.set("laststatus=2")
vim.cmd.let("mapleader = ','")
vim.cmd.set("guifont=FiraCode\\ Nerd\\ Font:h12")
vim.cmd.set("clipboard+=unnamedplus")

vim.cmd.colorscheme("habamax")
