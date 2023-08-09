let s:startup_done = 0
function! Startup()
    if s:startup_done  == 0
      " lua require('tree')
      " lua require('treesitter')
      lua require('telescope-config')
      lua require('nvim-lsp')
      let s:startup_done = 1
    endif
endfunction
