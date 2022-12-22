require("plugins.neovim.vscode").exclude_vscode(function()
    vim.opt.termguicolors = true
    require("bufferline").setup {}

    local map = require("plugins.neovim.lib.mappings").map

    map("n", "[b", ":BufferLineCyclePrev<CR>", { silent = true })
    map("n", "]b", ":BufferLineCycleNext<CR>", { silent = true })
    map("n", "<Leader>bs", ":lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>", { silent = true })
    map("n", "<Leader>bse", ":BufferLineSortByExtension<CR>", { silent = true })
    map("n", "<Leader>bsd", ":BufferLineSortByDirectory<CR>", { silent = true })
    map("n", "<Leader>bmn", ":BufferLineMoveNext<CR>", { silent = true })
    map("n", "<Leader>bmp", ":BufferLineMovePrev<CR>", { silent = true })
    map("n", "<Leader>bp", ":BufferLinePick<CR>", { silent = true })
    map("n", "<Leader>bpc", ":BufferLinePickClose<CR>", { silent = true })
    map("n", "<Leader>bc", ":BufferLineClose<CR>", { silent = true })
    map("n", "<Leader>bcl", ":BufferLineCloseLeft<CR>", { silent = true })
    map("n", "<Leader>bcr", ":BufferLineCloseRight<CR>", { silent = true })
end)

