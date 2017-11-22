" Assumes that a config variable exists in your path
let g:plugins = 1

let sourceFileList = [
\   '~/.config/nvim/plugin-configurations/index.vim',
\   '~/.config/nvim/builtin-settings.vim',
\   '~/.config/nvim/abbreviations.vim',
\   '~/.config/nvim/statusline.vim',
\   '~/.config/nvim/functions.vim',
\   '~/.config/nvim/key-maps.vim',
\   '~/.config/nvim/autocmd.vim',
\ ]

for sourceFile in sourceFileList
  execute 'source '.sourceFile
endfor

