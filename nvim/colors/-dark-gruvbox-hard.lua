-- Gruvbox Dark theme defaults

vim.o.background = "dark"
vim.g.gruvbox_material_foreground = 'original'
vim.g.gruvbox_material_background = 'hard'
vim.cmd.source("~/dotfiles/nvim/.plugged/gruvbox-material/colors/gruvbox-material.vim")
vim.cmd [[hi! floatborder guifg=fg guibg=none]]
vim.cmd [[hi! NormalFloat guibg=none]]
vim.cmd [[hi! NvimTreeSignColumn guibg=none]]

print(vim.system({ 'tmux', 'run-shell', '/home/habib/.config/tmux/themes/nord-tmux/nord.tmux'}):wait().stderr)

local color_sh = string.format("%s/colors/color.sh", vim.fs.dirname(vim.env.MYVIMRC))
vim.system({ 'sh', color_sh, 'gruvbox_material' })
