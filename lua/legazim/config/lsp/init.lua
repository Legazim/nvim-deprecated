local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require('legazim.config.lsp.mason')
require('legazim.config.lsp.mason-tool-installer')
