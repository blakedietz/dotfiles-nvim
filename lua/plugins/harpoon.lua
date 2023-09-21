return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults["<leader>h"] = { name = "+harpoon" }
    end,
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("harpoon")
    end,
    keys = {
      { "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
      { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
      { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
      { "<leader>ha", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
      { "<leader>shm", "<cmd>Telescope harpoon marks<cr>", desc = "harpoon marks" },
    },
  },
}
