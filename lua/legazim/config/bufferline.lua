local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
    return
end

bufferline.setup({
    options = {
        separator_style = 'slant',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or ""
            return ' ' .. icon .. count
        end,
        numbers = 'ordinal',
        groups = {
            items = {
                require('bufferline.groups').builtin.pinned:with({ icon = "" })
            }
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
        }
    }
})

vim.keymap.set('n', '<leader>bp', ':BufferLineTogglePin<cr>', { silent = true })
vim.keymap.set('n', '<leader>b1', ':lua require("bufferline").go_to_buffer(1, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b2', ':lua require("bufferline").go_to_buffer(2, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b3', ':lua require("bufferline").go_to_buffer(3, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b4', ':lua require("bufferline").go_to_buffer(4, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b5', ':lua require("bufferline").go_to_buffer(5, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b6', ':lua require("bufferline").go_to_buffer(6, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b7', ':lua require("bufferline").go_to_buffer(7, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b8', ':lua require("bufferline").go_to_buffer(8, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b9', ':lua require("bufferline").go_to_buffer(9, true)<cr>', { silent = true })
vim.keymap.set('n', '<leader>b-1', ':lua require("bufferline").go_to_buffer(-1, true)<cr>', { silent = true })
