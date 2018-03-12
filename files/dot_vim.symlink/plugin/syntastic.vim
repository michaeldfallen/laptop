" Add syntastic messages to status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Nicer symbols for errors and warnings
let g:syntastic_enable_signs=1
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '!'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

" Put error messages in the Location list and open it after checking
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0

" Check on file open and write
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Custom file type map for unusual file extensions
let g:syntastic_filetype_map = { 'html.mustache': 'mustache' }
