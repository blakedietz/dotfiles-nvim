" Airline Configurations
" Have to patch fonts in order for the nice angular tag like symbols
:let g:airline_powerline_fonts = 1
:let g:airline_theme='solarized'
:let g:airline#extensions#tabline#enabled = 1
" Give a better timeout period to make sure that the status indicator changes after hitting escape
" See this for more information: https://github.com/bling/vim-airline/wiki/FAQ
" http://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0
" https://github.com/bling/vim-airline/wiki/FAQ#vim-airline-doesnt-appear-until-i-create-a-new-split
set laststatus=2

