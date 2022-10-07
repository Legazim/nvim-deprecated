local status_ok, masontoolinstaller = pcall(require, 'mason-tool-installer')
if not status_ok then
    return
end

masontoolinstaller.setup({
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

    auto_update = false,
    run_on_start = true,
    start_delay = 3000, -- 3 second delay
})
