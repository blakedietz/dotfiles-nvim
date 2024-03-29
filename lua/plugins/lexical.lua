local root_dir = function(fname)
  local lspconfig = require("lspconfig")
  local root = lspconfig.util.root_pattern(".git")(fname) or vim.loop.os_homedir()
  return root
end

local custom_attach = function()
  -- local buf_name = vim.fn.expand("%") (does not include directory, only filename)
  local buf_name = vim.api.nvim_buf_get_name(0)
  local root = root_dir(buf_name)
end

local lexical = {
  filetypes = { "elixir", "eelixir" },
  cmd = { "/Users/blakedietz/projects/lexical-lsp/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  root_dir = root_dir,
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lexical = {
        mason = false, -- do not set up with mason
        filetypes = lexical.filetypes,
        on_attach = custom_attach,
        autostart = true,
      },
    },
    setup = {
      lexical = function(_, _)
        local configs = require("lspconfig.configs")
        -- need to add the key with `configs.lexical = ...`
        -- so that configs.__new_index() runs before the setup that happens
        -- aftewards inside lazyvim setup:
        configs.lexical = {
          default_config = {
            filetypes = lexical.filetypes,
            cmd = lexical.cmd,
            root_dir = lexical.root_dir,
            autostart = true,
          },
        }
        -- returns false to use the set-up from lazy.vim with lspconfig
        -- (adds capabilities key, executes lspconfig.lexical.setup(opts))
        return false
      end,
    },
  },
}
