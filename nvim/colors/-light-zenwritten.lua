-- Zenwritten Light theme defaults

vim.o.background = "light"
vim.cmd.source("~/dotfiles/nvim/.plugged/zenbones.nvim/colors/zenwritten.vim")
vim.cmd [[hi! floatborder guifg=fg guibg=none]]

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'zenwritten_light' })