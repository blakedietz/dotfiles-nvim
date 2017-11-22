if (g:plugins == 1)
 call plug#begin('~/.local/share/nvim/plugged')
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   " Plug 'benekastah/neomake'
   Plug 'jaxbot/semantic-highlight.vim'
   Plug 'lifepillar/vim-solarized8'
   Plug 'mxw/vim-jsx'
   Plug 'pangloss/vim-javascript'
   Plug 'prettier/prettier'
   Plug 'scrooloose/nerdtree'
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'
   Plug 'w0rp/ale'
 call plug#end()

 let sourceFileList = [
 \   '~/.config/nvim/plugin-configurations/airline.vim',
 \   '~/.config/nvim/plugin-configurations/deoplete.vim',
 \   '~/.config/nvim/plugin-configurations/neomake.vim',
 \   '~/.config/nvim/plugin-configurations/nerdtree.vim',
 \   '~/.config/nvim/plugin-configurations/vim-solarized8.vim',
 \   '~/.config/nvim/plugin-configurations/ale.vim',
 \ ]

 for sourceFile in sourceFileList
   execute 'source '.sourceFile
 endfor
endif

