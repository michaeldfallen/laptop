"" Hide the default vim statusline
set noshowmode
"
"" Cause airline to display
set laststatus=2
set ttimeoutlen=10
"
"" Use fancier section separators
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

" Display open buffers
let g:airline#extensions#tabline#enabled = 1

" +---------------------------------------------------------------------------+
" |~                                                                          |
" |~                                                                          |
" |~                     VIM - Vi IMproved                                    |
" |~                                                                          |
" |~                       version 8.0                                        |
" |~                    by Bram Moolenaar et al.                              |
" |~           Vim is open source and freely distributable                    |
" |~                                                                          |
" |~           type :h :q<Enter>          to exit                             |
" |~           type :help<Enter> or <F1>  for on-line help                    |
" |~           type :help version8<Enter> for version info                    |
" |~                                                                          |
" |~                                                                          |
" +---------------------------------------------------------------------------+
" | A | B |                     C                          X | Y | Z |  [...] |
" +---------------------------------------------------------------------------+
function! AirlineInit()
  let g:airline_section_b = airline#section#create([])
  let g:airline_section_y = airline#section#create([])
  let g:airline_section_z = airline#section#create(['%l', '/', '%L'])
endfunction

autocmd VimEnter * call AirlineInit()

let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'v'  : 'V',
  \ 'V'  : 'V-L',
  \ 'c'  : 'C',
  \ '' : 'V-B',
  \ 's'  : 'S',
  \ 'S'  : 'S-L',
  \ '' : 'S-B',
\ }
