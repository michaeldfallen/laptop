
" Prevent folding in gitv dialogs
augroup git
  au!
  autocmd FileType git :setlocal foldlevel=99
augroup END
