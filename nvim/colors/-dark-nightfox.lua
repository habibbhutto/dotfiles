-- Zenwritten Dark theme defaults

vim.o.background = "dark"
vim.cmd.source("~/dotfiles/nvim/.plugged/nightfox.nvim/colors/nightfox.vim")

print(vim.system({ 'tmux', 'run-shell', '/home/habib/.config/tmux/themes/nord-tmux/nord.tmux'}):wait().stderr)

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'nightfox' })
print(vim.system({ 'tmux', 'source-file', '/home/habib/.config/tmux/themes/nightfox.tmux'}):wait().stderr)

