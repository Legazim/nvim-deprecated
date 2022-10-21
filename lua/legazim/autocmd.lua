vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]

local num_au = vim.api.nvim_create_augroup('legazim', { clear = true })
-- Highlight the region on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual' })
    end,
})
