local status_ok, trim = pcall(require, 'trim')
if not status_ok then
    return
end

trim.setup({
    -- if you want to ignore filetypes.
    disable = {
        "markdown",
    },

    -- patterns = {
    --   [[%s/\s\+$//e]],
    --   [[%s/\($\n\s*\)\+\%$//]],
    --   [[%s/\(\n\n\)\n\+/\1/]],
    -- },
})
