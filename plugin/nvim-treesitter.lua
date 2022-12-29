require("plugins.neovim.vscode").exclude_vscode(function()
    require("nvim-treesitter.configs").setup {
        ensure_installed = {
          -- Start Obsidian.nvim
          "markdown",
          "markdown_inline",
          -- End Obsidian.nvim
          "eex", "elixir", "erlang", "heex", "html", "surface"},
        sync_install = false,
        ignore_install = {},
        highlight = {
            enable = true,
            disable = {},
            -- Start Obsidian.nvim
            additional_vim_regex_highlighting = { "markdown" }
            -- End Obsidian.nvim
        }
    }
end)
