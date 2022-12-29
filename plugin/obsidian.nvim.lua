
require("plugins.neovim.vscode").exclude_vscode(function()
  require("obsidian").setup({
    dir = "~/notes",
    completion = {
      nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
    }
  })
end)
