-- catppuccin-latte defaults

vim.o.background = "light"
vim.cmd.source("~/dotfiles/nvim/.plugged/nvim/colors/catppuccin-latte.vim")
-- vim.cmd [[hi! floatborder guifg=fg guibg=none]]

print(vim.system({ 'tmux', 'run-shell', '/home/habib/.config/tmux/themes/nord-tmux/nord.tmux'}):wait().stderr)

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'catppuccin_latte2' })
