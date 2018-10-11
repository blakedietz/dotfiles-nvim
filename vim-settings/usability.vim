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
