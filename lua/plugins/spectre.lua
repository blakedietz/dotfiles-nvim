return {
  {
    "nvim-pack/nvim-spectre",
    -- stylua: ignore
    keys = {
      { "<leader>sp", function() require("spectre").open_file_search({select_word=true}) end, desc = "Replace in file (Spectre)" },
    },
  },
}
