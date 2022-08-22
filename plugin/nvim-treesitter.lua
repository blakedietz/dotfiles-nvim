require("plugins.neovim.vscode").exclude_vscode(function()
    require'nvim-treesitter.configs'.setup {
        ensure_installed = {"eex", "elixir", "erlang", "heex", "html", "surface"},
        sync_install = false,
        ignore_install = {},
        highlight = {
            enable = true,
            disable = {}
        }
    }
end)
