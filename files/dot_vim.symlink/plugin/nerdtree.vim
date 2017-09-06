" NerdTree don't open on startup
let g:nerdtree_tabs_open_on_gui_startup=0

" Leader+e - open NerdTree
nmap <leader>e :NERDTreeToggle<CR>

" NERD_tree config
let NERDTreeChDirMode=2

" Hide files from the tree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']

" Order files in the tree:
"   __init__.py, etc
"  directories
"  normal files
"  vim swap files
"  vim backup files
let NERDTreeSortOrder=[
\   '^__\.py$',
\   '\/$',
\   '*',
\   '\.swp$',
\   '\~$',
\ ]


" Use devicons for git nerdtree icons
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : " ",
    \ "Staged"    : " ",
    \ "Untracked" : " ",
    \ "Renamed"   : " ",
    \ "Unmerged"  : " ",
    \ "Deleted"   : " ",
    \ "Dirty"     : " ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : ' ',
    \ "Unknown"   : "? "
    \ }
