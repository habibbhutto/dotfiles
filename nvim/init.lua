vim.loader.enable()

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
--
-- vim.cmd([[
--    autocmd VimEnter * source ~/dotfiles/nvim/colorscheme.vim
--    autocmd VimEnter * call Startup()
--    " Disabling it for now as it's seems slower
--    " autocmd VimEnter * lua require('treesitter')
--    autocmd VimEnter * lua require('tree')
--    " autocmd VimEnter * call ToggleZenMode()
-- ]]);
--
-- vim.cmd 'source ~/dotfiles/nvim/plugins.vim'
-- vim.cmd 'source ~/dotfiles/nvim/basics.vim'
-- vim.cmd 'source ~/dotfiles/nvim/lazy-start.vim'
-- vim.cmd 'source ~/dotfiles/nvim/fzf.vim'
-- vim.cmd 'source ~/dotfiles/nvim/keymaps.vim'
--
-- vim.api.diff basic.vim init.lua
--

vim.cmd('source ~/dotfiles/nvim/plugins.vim')

vim.cmd.set("nocompatible")
vim.cmd.filetype("plugin on")
vim.cmd.filetype("indent on")
vim.cmd.syntax("on")

vim.cmd.set("shiftwidth=2")
vim.cmd.set("tabstop=2")
vim.o.expandtab = true
vim.o.backup = false
vim.o.writebackup = true
vim.o.autoread = true
vim.o.swapfile = false
vim.o.splitright = true
vim.o.scrolloff = 1

-- (optional - breaks by word rather than character)
vim.o.linebreak = true
-- (optional - breaks by word rather than character)
vim.o.breakindent = true
-- (optional - breaks by word rather than character)
vim.o.showbreak = '↪ '
-- following configurations don't work for me,
-- breaking the cursorline which is distracting
-- unless I disable the cursorline
-- vim.o.breakindentopt = "shift:2,sbr
-- vim.o.breakindentopt = "sbr"
-- vim.o.breakindentopt = "shift:2"
vim.o.wrap = true


vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showcmd = false
vim.o.showmode = false
vim.o.hlsearch = true
vim.o.history = 1000
vim.o.wildmenu = true
vim.o.wildmode = "list:longest"
vim.o.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"
vim.o.ttyfast = true
vim.o.encoding = "utf-8"
vim.o.timeout = true
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 100
vim.o.cmdheight = 1
vim.o.cmdwinheight = 10
vim.o.keywordprg=":help"
vim.o.updatetime = 50
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 99
vim.o.laststatus = 2
vim.cmd.let("mapleader=','")
vim.o.guifont="FiraCode\\ Nerd\\ Font:h12"
vim.cmd.set("clipboard+=unnamedplus")

vim.g.gruvbox_material_better_performance=1
-- https://neovim.io/doc/user/faq.html
vim.cmd.set('termguicolors')
vim.o.termguicolors = true
vim.o.cursorline = true
vim.cmd.colorscheme("lunaperche")

vim.cmd.set("number")
-- vim.cmd.set("relativenumber")
vim.cmd.set("numberwidth=4")
vim.cmd.set("signcolumn=yes")

vim.g.gitgutter_sign_added              = '┃'
vim.g.gitgutter_sign_modified           = '┃'
vim.g.gitgutter_sign_removed            = '┃'
vim.g.gitgutter_sign_modified_removed   = '┃'
vim.g.gitgutter_sign_removed_first_line = '┃'
vim.g.gitgutter_sign_removed_above_and_below = '┃'

vim.cmd([[
  highlight GitGutterAdd    guifg=#008800 ctermfg=2
  highlight GitGutterChange guifg=#0077ff ctermfg=3
  highlight GitGutterDelete guifg=#dd000a ctermfg=1
]])

require'colorizer'.setup()

-- neovide
vim.g.neovide_theme = 'auto'
vim.g.neovide_scale_factor=1.1

vim.g.neovide_cursor_trail_size = 0.2
vim.g.neovide_cursor_animation_length = 0.10
vim.g.neovide_cursor_vfx_mode = ''

vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0

require('keymaps')
-- require('treesitter')
require('bqf').setup({
  auto_resize_height = true, -- highly recommended enable
  preview = {
    winblend = 0,
  },
})

vim.cmd('source ~/dotfiles/nvim/fzf.vim')

vim.cmd([[
   let s:startup_done = 0
   function! Startup()
       if s:startup_done  == 0
         lua require('telescope-config')
         lua require('nvim-lsp')
         lua require('completion')
         let s:startup_done = 1
         Copilot disable
       endif
   endfunction
   autocmd VimEnter * call Startup()
   " autocmd VimEnter * lua require('treesitter')
   autocmd VimEnter * lua require('tree')
]]);

local auto_dark_mode = require('auto-dark-mode')

require("catppuccin").setup({
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
})


vim.g.zenwritten = { italic_comments = false }

auto_dark_mode.setup({
    update_interval = 1000,
    set_dark_mode = function()
        vim.cmd.colorscheme("-dark-zenwritten")
        vim.api.nvim_set_option_value("background", "dark", {})
    end,
    set_light_mode = function()
        vim.cmd.colorscheme("-light-zenwritten")
        vim.api.nvim_set_option_value("background", "light", {})
    end,
})

vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 0
vim.g.mkdp_command_for_global = 1
vim.g.mkdp_combine_preview = 1
vim.g.mkdp_combine_preview_auto_refresh = 1


local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.completion.spell,
    },
})

-- require("tabby").setup({})
require("codecompanion").setup()

vim.cmd [[
function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " Set the tab number (1-based index)
    let tab_number = i + 1
    " Get the tab name
    let tab_name = fnamemodify(bufname(tabpagebuflist(tab_number)[0]), ':t')
    " Highlight the current tab
    if tab_number == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " Add the tab number and name to the tabline
    let s .= ' ' . tab_number . '|' . tab_name . ' '
  endfor
  " Add the close button
  let s .= '%#TabLineFill#%T'
  return s
endfunction

set tabline=%!MyTabLine()
]]
