return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "Telesope file browser" },
    },
  },
}
