local M = {}

function M.exclude_vscode(cb)
    if vim.g.vscode == nil then
        cb()
    end
end

return M
