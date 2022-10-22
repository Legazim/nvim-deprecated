local status_ok, mason_tool_installer = pcall(require, 'mason-tool-installer')
if not status_ok then
    return
end

mason_tool_installer.setup({
    ensure_installed = {
        -- LSP
        -- "css-lsp",
        "intelephense",
        "lua-language-server",
        "pyright",
        "sqlls",
        "python-lsp-server",
        -- Formatter
        "prettier",
        -- Linter
        "eslint-lsp",
        "eslint_d",
        "black",
        "shellcheck",
        -- DAP
        "debugpy",
        "php-debug-adapter",
    },
    auto_update = true,
    run_on_start = true,
    start_delay = 1000, -- 1 second delay
})
