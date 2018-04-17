" Share the clipboard y copies into clipboard p pastes from it
if has('gui_macvim')
  set clipboard=unnamed
elseif has('gui_running')
  set clipboard=unnamedplus
endif
