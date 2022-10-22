local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
    return
end

vim.keymap.set('n', '<M-f>', ':lua vim.lsp.buf.formatting_sync()<cr>', { noremap = true })

require('lsp.cmp')
require('lsp.mason')
require('lsp.mason-tool-installer')
require('lsp.configs')
require('lsp.handlers').setup()
require('lsp.null-ls')
