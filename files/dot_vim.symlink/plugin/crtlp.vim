" Ignore files ignored in gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Leader+f - open CtrlP for files
nmap <leader>f :CtrlP<CR>

" Leader+b - open CtrlP for buffers
nmap <leader>b :CtrlPBuffer<CR>
