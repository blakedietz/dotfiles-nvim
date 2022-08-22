require("plugins.neovim.vscode").exclude_vscode(function()
    local tree_cb = require("nvim-tree.config").nvim_tree_callback

    require("nvim-tree").setup({
        open_on_setup = false,
        open_on_setup_file = false,
        open_on_tab = false,
        sort_by = "case_sensitive",
        view = {
            adaptive_size = true,
            mappings = {
                list = {{
                    key = "u",
                    action = "dir_up"
                }, {
                    key = "L",
                    cb = tree_cb('cd')
                }}
            },
            side = "right"
        },
        renderer = {
            group_empty = true
        },
        update_focused_file = {
            enable = true,
            update_root = false,
            ignore_list = {}
        }
    })
end)
