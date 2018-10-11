" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Highlight current line
" http://vim.wikia.com/wiki/Highlight_current_line
set cursorline

:hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
