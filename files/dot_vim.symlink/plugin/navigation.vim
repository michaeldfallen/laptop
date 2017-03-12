" Separate panels with a ┃
set fillchars+=vert:\┃
set fillchars+=vert:\┃

" Use Ctrl+Arrow keys to switch panes
noremap <C-Down> <C-W>j
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

" Use Ctrl+[hjkl] for switching between panes
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Use \+Arrow keys to switch buffers
nmap <leader><Left> :bprev<CR>
nmap <leader><Right> :bnext<CR>
