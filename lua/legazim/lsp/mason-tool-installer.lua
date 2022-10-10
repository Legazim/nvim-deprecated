local status_ok, mason_tool_installer = pcall(require, 'mason-tool-installer')
if not status_ok then
    return
end

mason_tool_installer.setup({
    ensure_installed = {
        -- LSP
        "css-lsp",
        "html-lsp",
        "intelephense",
        "json-lsp",
        "lua-language-server",
        "pyright",
        "sqlls",
        "typescript-language-server",
        -- Formatter
        "prettier",
        "stylua",
        -- Linter
        "eslint_d",
        "shellcheck",
        "tflint",
        -- DAP
        "debugpy",
        "php-debug-adapter",
    },

    auto_update = true,
    run_on_start = true,
    start_delay = 3000, -- 3 second delay
})
