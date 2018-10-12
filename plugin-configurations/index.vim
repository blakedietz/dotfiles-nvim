if (g:plugins == 1)
 call plug#begin('~/.local/share/nvim/plugged')
   Plug '/usr/local/opt/fzf'
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'airblade/vim-gitgutter'
   Plug 'altercation/vim-colors-solarized'
   Plug 'elzr/vim-json'
   Plug 'gutenye/json5.vim'
   Plug 'jaxbot/semantic-highlight.vim'
   " fzf integration for vim 
   " https://github.com/junegunn/fzf.vim
   Plug 'junegunn/fzf.vim'
   Plug 'leafgarland/typescript-vim'
   Plug 'mattn/emmet-vim'
   Plug 'mxw/vim-jsx'
   Plug 'nathanaelkane/vim-indent-guides'
   Plug 'pangloss/vim-javascript'
   Plug 'prettier/prettier'
   " Close buffers without closing the window split
   " https://vimawesome.com/plugin/bufkill-vim
   Plug 'qpkorr/vim-bufkill',
   Plug 'scrooloose/nerdcommenter',
   Plug 'scrooloose/nerdtree'
   Plug 'sirver/ultisnips'
   Plug 'tpope/vim-fugitive'
   Plug 'tpope/vim-surround'
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'w0rp/ale'
 call plug#end()

 let sourceFileList = [
 \   '~/.config/nvim/plugin-configurations/airline.vim',
 \   '~/.config/nvim/plugin-configurations/ale.vim',
 \   '~/.config/nvim/plugin-configurations/deoplete.vim',
 \   '~/.config/nvim/plugin-configurations/fzf.vim',
 \   '~/.config/nvim/plugin-configurations/neomake.vim',
 \   '~/.config/nvim/plugin-configurations/nerdcomment.vim',
 \   '~/.config/nvim/plugin-configurations/nerdtree.vim',
 \   '~/.config/nvim/plugin-configurations/vim-colors-solarized.vim',
 \ ]

 for sourceFile in sourceFileList
   execute 'source '.sourceFile
 endfor
endif

