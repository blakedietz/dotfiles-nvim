" USABILITY ------------------------------------------------------------

  " Show the (partial) command as it’s being typed
  set showcmd

  " Start scrolling three lines before the horizontal window border
  set scrolloff=3

  " Don’t show the intro message when starting Vim
  set shortmess=atI
  " Show the current mode
  set showmode
  " Don’t add empty newlines at the end of files
  set binary
  set noeol

  " Always show status line
  set laststatus=2

  " Enable mouse in all modes
  set mouse=a

  " Disable error bells
  set noerrorbells

  " Use all features that are available for Vim, this isn't vi
  set nocompatible

  " Use the OS clipboard by default (on versions compiled with `+clipboard`)
  set clipboard=unnamed

  " Enhance command-line completion
  set wildmenu
  " Allow backspace in insert mode
  "
  set backspace=indent,eol,start 
  " Optimize for fast terminal connections
  set ttyfast

" END USABILITY ------------------------------------------------------------

" FILE ------------------------------------------------------------

  " Use UTF-8 without BOM
  set encoding=utf-8 nobomb
  " Show the filename in the window titlebar
  set title

" END FILE ------------------------------------------------------------

" DEV ------------------------------------------------------------

  " Enable line numbers
  set number

  " Make comments italic
  highlight Comment cterm=italic

  " Enable syntax highlighting
  syntax on

" END DEV ------------------------------------------------------------

" TEXT ------------------------------------------------------------

  " Show “invisible” TEXT
  set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

  " Make commands like <, >, and = behave like tabstop as well
  set shiftwidth=2

  " Respect modeline in files
  set modeline
  set modelines=4

  " TABS, SPACES, TABS, SPACES!!!!!
  " tab witdth is defined in .editorconfig
  set expandtab

  " Make tabs as wide as two spaces
  set tabstop=2

  " Display whitespaces
  " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
  set list

" END TEXT ------------------------------------------------------------

" DIRECTORIES ------------------------------------------------------------

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

" END DIRECTORIES ------------------------------------------------------------

" SEARCH ------------------------------------------------------------

  " Highlight searches
  set hlsearch

  " Highlight dynamically as pattern is typed
  set incsearch

  " Ignore case of searches
  set ignorecase

  " Add the g flag to search/replace by default
  set gdefault

" END SEARCH---------------------------------------------------------

" CURSOR ------------------------------------------------------------

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


" END CURSOR---------------------------------------------------------

