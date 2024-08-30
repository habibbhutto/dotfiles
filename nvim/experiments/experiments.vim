set makeprg=npx\ eslint
" set makeprg=$(npm\ bin)/eslint\ --format\ compact\ --fix  
" set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m,%-G%.%#

autocmd BufWritePost *.ts,js silent lmake % --fix --format unix | lwindow | checktime | call feedkeys("\`\`") 
" autocmd BufWritePost *.ts,js silent lmake % --fix --format compact | lwindow | checktime | call feedkeys("\`\`") " call feedkeys("\<C-o>")
" autocmd BufWritePost *.ts,js silent make % | edit %
" https://gist.github.com/romainl/2f748f0c0079769e9532924b117f9252
"
" Expriment
function! ClearTerminal()
  set scrollback=1
  let &g:scrollback=1
  echo &scrollback
  call feedkeys("\i")
  call feedkeys("clear\<CR>")
  call feedkeys("\<C-\>\<C-n>")
  call feedkeys("\i")
  sleep 100m
  let &scrollback=s:scroll_value
endfunction

" nnoremap <silent> ff :Files<cr>
" nnoremap <silent> fg :GitFiles<cr>
" nnoremap <silent> <leader>b :Buffers<cr>
" nnoremap <silent> ffg :Rg<cr>
" nnoremap <silent> tt :Tags<cr>
" nnoremap <silent> <leader>lg :Telescope live_grep<cr>
" nnoremap <silent> <leader>sg :Telescope grep_string<cr>
" nnoremap <silent> <leader>lm <cmd>execute "vimgrep /async\\\|private\\\|\\s\\s\\s\\s[A-z]*(.*)\\s{\\\|\\s\\s\\s\\s[A-z]*():/ %" <bar>cwindow<cr>
" nnoremap <silent> <leader>aa <cmd>exec '!sh add-tags.sh '.expand('<cword>').' '.expand('%').' "/^'.getline('.').'"'<cr>
"
nnoremap <silent> <leader>tta <cmd>exec '!sh ~/dev/devx/add-tags.sh '.expand('<cword>').' '.expand('%').' "/^'.getline('.').'"'<cr>

" " netrw cofig
" let g:netrw_banner = 0
" let g:netrw_preview   = 1
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 0
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" let g:netrw_keepdir = 0
" let g:netrw_localcopydircmd = 'cp -r'
" 
" hi! link netrwMarkFile Search
" 
" function! NetrwMapping()
"   nmap <buffer> o <CR>
" 
"   nmap <buffer> . <CR> cd
"   nmap <buffer> P <C-w>z
" 
"   nmap <buffer> <silent> <nowait> <BS>  <Plug>NetrwTreeSqueeze
" 
"   nmap <buffer> <TAB> mf
"   nmap <buffer> <S-TAB> mF
"   nmap <buffer> <Leader><TAB> mu
" endfunction
" 
" augroup netrw_mapping
"   autocmd!
"   autocmd filetype netrw call NetrwMapping()
" augroup END
