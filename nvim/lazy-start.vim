let s:startup_done = 0
function! StartupStuff()
    if s:startup_done  == 0
      lua require('tree')
      lua require('treesitter')
      lua require('telescope-config')
      lua require('nvim-lsp')
      lua require'colorizer'.setup()
    endif
endfunction
