require("plugins.neovim.vscode").exclude_vscode(function()
  require("telescope").load_extension("git_worktree")

  require("git-worktree").setup()
    local map = require("plugins.neovim.lib.mappings").map

    map("n", "<Leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { silent = true })

    map("n", "<Leader>gwc", ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", { silent = true })

    local Worktree = require("git-worktree")
    local Job = require("plenary.job")

    Worktree.on_tree_change(function(operation, path, upstream)
      if operation == "create" then
        Job:new({"mix", "deps.get"}):start()
      end
    end)
end)
