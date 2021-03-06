" Nerdtree Configurations
map <D-1> :NERDTreeToggle<CR>
" Automatically open NERDTree when vim is opened
autocmd vimenter * NERDTree
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
