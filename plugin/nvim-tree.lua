require("nvim-tree").setup({
  open_on_setup = true,
  open_on_setup_file = true,
  open_on_tab = false,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
    side = "right"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
   },
})
