" Alias Q for q and W for w to fix the :Q not a command problems
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
cnoreabbrev <expr> wQ ((getcmdtype() is# ':' && getcmdline() is# 'wQ')?('wq'):('wQ'))
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Use \+w to close a buffer and switch to the previous buffer
" This keeps the window open and basically makes buffers act like tabs
" in any other editor
nmap <leader>w :w<CR> :BD <CR>
