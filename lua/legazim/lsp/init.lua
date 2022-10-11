local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
    return
end

require('legazim.lsp.mason')
require('legazim.lsp.mason-tool-installer')
require('legazim.lsp.configs')
require('legazim.lsp.handlers').setup()
-- require('legazim.lsp.null-ls')
