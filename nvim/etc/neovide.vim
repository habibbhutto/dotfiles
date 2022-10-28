if exists("g:neovide")
    set guifont=Fira\ Code:h10

    " pixiedust
    let g:neovide_cursor_vfx_mode = ""
    nnoremap <silent> <F11> :call ToggleFullScreen()<cr>

    lua << EOF
      vim.cmd([[
        " system clipboard
        nmap <c-c> "+y
        vmap <c-c> "+y
        nmap <S-insert> "+p
        inoremap <S-insert> <c-r>+
        cnoremap <S-insert> <c-r>+
        " use <c-r> to insert original character without triggering things like auto-pairs
        inoremap <c-r> <S-insert>
      ]])
    EOF

    function ToggleFullScreen()
      if exists("g:neovide")
        if (g:neovide_fullscreen == v:true)
          let g:neovide_fullscreen = v:false
        else
          let g:neovide_fullscreen = v:true
        endif
      endif
    endfunction
endif
