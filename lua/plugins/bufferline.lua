return {
  {
    "akinsho/bufferline.nvim",
    -- bj for buffer jump to
    keys = {
      { "<leader>bj", "<cmd>BufferLinePick<cr>", desc = "BufferLine: Pick a buffer using a label" },
      { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "BufferLine: Close a buffer using a label" },
    },
  },
}
