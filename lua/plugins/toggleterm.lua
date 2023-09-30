return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = 20,
      direction = "horizontal",
      auto_scroll = false,
    },
    config = true,
    keys = {
      {
        "<Leader>t",
        function()
          require("toggleterm").toggle(vim.v.count1)
        end,
      },
      {
        "<Leader>ta",
        function()
          require("toggleterm").toggle_all()
        end,
      },
    },
    lazy = false,
  },
}
