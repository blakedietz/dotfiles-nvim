require("plugins.neovim.vscode").exclude_vscode(function()
  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

  require("null-ls").setup({
      -- you can reuse a shared lspconfig on_attach callback here
      on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
              vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
              vim.api.nvim_create_autocmd("BufWritePre", {
                  group = augroup,
                  buffer = bufnr,
                  callback = function()
                      -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                      -- commented the below line out and used the above comment code
                      -- vim.lsp.buf.formatting_sync()
                      vim.lsp.buf.format({ bufnr = bufnr })
                  end,
              })
          end
      end,
  })
end)
