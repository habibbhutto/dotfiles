
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx', 'typescriptreact', 'javascript', 'javascript.jsx', 'javascriptreact'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gdd <plug>(lsp-definition)
    nmap <buffer> gd  <plug>(lsp-peek-definition)
    nmap <buffer> gs  <plug>(lsp-document-symbol-search)
    nmap <buffer> gS  <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr  <plug>(lsp-references)
    nmap <buffer> gii <plug>(lsp-implementation)
    nmap <buffer> gi  <plug>(lsp-peek-implementation)
    nmap <buffer> gy  <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [d <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]d <plug>(lsp-next-diagnostic)
    noremap <buffer> <expr><c-j> lsp#scroll(+4)
    noremap <buffer> <expr><c-k> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.ts,*.js,*.json,*.tsx,*.jsx call execute('LspDocumentFormatSync')
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_signs_error = {'text': 'E'}
let g:lsp_diagnostics_signs_warning = {'text': 'W'}
let g:lsp_diagnostics_signs_hint = {'text': 'H'}
let g:lsp_diagnostics_signs_information = {'text': 'I'}
let g:lsp_document_code_action_signs_hint = {'text': 'A'}
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 0
let g:lsp_diagnostics_highlights_insert_mode_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_diagnostics_float_delay = 200
let g:lsp_document_highlight_enabled = 1
let g:lsp_document_highlight_delay = 150
let g:lsp_preview_keep_focus = 1
let g:lsp_preview_autoclose = 1
let g:lsp_preview_float = 1
let g:lsp_preview_doubletap = [function('lsp#ui#vim#output#closepreview')]
set completeopt=menuone,noinsert,noselect,preview

inoremap <c-p> <c-x><c-o>
inoremap <c-i> <cmd>LspHover<cr>
noremap <c-i> <cmd>LspHover<cr>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
