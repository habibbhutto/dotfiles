let s:startup_done = 0
function! Startup()
    if s:startup_done  == 0
      " lua require('telescope-config')
      lua require('nvim-lsp')
      lua require('completion')
      let s:startup_done = 1
    endif
endfunction
