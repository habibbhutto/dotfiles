-- Zenwritten Dark theme defaults

vim.o.background = "dark"
vim.cmd.source("~/dotfiles/nvim/.plugged/zenbones.nvim/colors/zenwritten.vim")

print(vim.system({ 'tmux', 'run-shell', '/home/habib/.config/tmux/themes/nord-tmux/nord.tmux'}):wait().stderr)

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'zenwritten_dark' })
