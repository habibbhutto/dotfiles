-- Gruvbox Dark theme defaults

vim.o.background = "dark"
vim.cmd.source("~/dotfiles/nvim/.plugged/nvim/colors/catppuccin-mocha.vim")
-- vim.cmd [[hi! floatborder guifg=fg guibg=none]]

print(vim.system({ 'tmux', 'run-shell', '/home/habib/.config/tmux/themes/nord-tmux/nord.tmux'}):wait().stderr)

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'catppuccin_mocha' })
