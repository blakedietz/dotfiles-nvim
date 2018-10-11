if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups

set directory=~/.vim/swaps

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
