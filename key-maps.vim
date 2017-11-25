" Change mapleader to comma
" http://dailyvim.blogspot.com/2008/11/using-mapleader.html<Paste>
let mapleader=","

" Improve buffering
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

" Go down a line for softwrapping
:nmap j gj
:nmap k gk

noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
