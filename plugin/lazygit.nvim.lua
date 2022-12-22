require("plugins.neovim.vscode").exclude_vscode(function()
  local map = require("plugins.neovim.lib.mappings").map

  map("n", "<Leader>l", ":LazyGit<CR>", { silent = true })
end)
