require("plugins.neovim.vscode").exclude_vscode(function()
    require('lualine').setup {
        options = {
            theme = 'dracula'
        }
    }
end)
