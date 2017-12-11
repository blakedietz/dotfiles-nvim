if (g:plugins == 1)
 call plug#begin('~/.local/share/nvim/plugged')
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'jaxbot/semantic-highlight.vim'
   Plug 'mxw/vim-jsx'
   Plug 'pangloss/vim-javascript'
   Plug 'prettier/prettier'
   Plug 'scrooloose/nerdtree'
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'altercation/vim-colors-solarized'
   Plug 'w0rp/ale'
   Plug 'tpope/vim-fugitive'
   Plug 'tpope/vim-surround'
   Plug 'airblade/vim-gitgutter'
   Plug 'pangloss/vim-javascript'
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
   Plug 'junegunn/fzf.vim'
   Plug 'elzr/vim-json'
   Plug 'nathanaelkane/vim-indent-guides'
 call plug#end()

 let sourceFileList = [
 \   '~/.config/nvim/plugin-configurations/airline.vim',
 \   '~/.config/nvim/plugin-configurations/deoplete.vim',
 \   '~/.config/nvim/plugin-configurations/neomake.vim',
 \   '~/.config/nvim/plugin-configurations/nerdtree.vim',
 \   '~/.config/nvim/plugin-configurations/vim-colors-solarized.vim',
 \   '~/.config/nvim/plugin-configurations/ale.vim',
 \ ]

 for sourceFile in sourceFileList
   execute 'source '.sourceFile
 endfor
endif

