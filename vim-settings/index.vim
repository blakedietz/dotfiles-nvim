 let sourceFileList = [
 \ '~/.config/nvim/vim-settings/usability.vim',
 \ '~/.config/nvim/vim-settings/files.vim',
 \ '~/.config/nvim/vim-settings/dev.vim',
 \ '~/.config/nvim/vim-settings/text.vim',
 \ '~/.config/nvim/vim-settings/directories.vim',
 \ '~/.config/nvim/vim-settings/search.vim',
 \ '~/.config/nvim/vim-settings/cursor.vim',
 \ ]

for sourceFile in sourceFileList
 execute 'source '.sourceFile
endfor

