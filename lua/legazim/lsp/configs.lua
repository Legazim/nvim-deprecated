local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local mason_config = require("mason-lspconfig")
local servers = mason_config.get_installed_servers()

mason.setup({
    ensure_installed = servers,
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("legazim.lsp.handlers").on_attach,
        capabilities = require("legazim.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "legazim.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
