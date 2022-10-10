local status_ok, Fterm = pcall(require, "Fterm")
if not status_ok then
    return
end

Fterm.setup({
})
-- Example keybindings
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- local status_ok, toggleterm = pcall(require, "toggleterm")
-- if not status_ok then
--     return
-- end
--
-- toggleterm.setup {
--     size = 20,
--     open_mapping = [[<C-t>]],
--     hide_numbers = true,
--     shade_filetypes = {},
--     shade_terminals = true,
--     shading_factor = 2,
--     start_in_insert = true,
--     insert_mappings = true,
--     persist_size = true,
--     direction = "float",
--     close_on_exit = true,
--     shell = vim.o.shell,
--     float_opts = {
--         border = "curved",
--         winblend = 0,
--         highlights = {
--             border = "Normal",
--             background = "Normal",
--         },
--     },
-- }
--
-- function _G.set_terminal_keymaps()
--     local opts = { noremap = true }
--     vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--     vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
--     vim.api.nvim_buf_set_keymap(0, "t", "kj", [[<C-\><C-n>]], opts)
--
--     vim.api.nvim_buf_set_keymap(0, "t", "<m-h>", [[<C-\><C-n><C-W>h]], opts)
--     vim.api.nvim_buf_set_keymap(0, "t", "<m-j>", [[<C-\><C-n><C-W>j]], opts)
--     vim.api.nvim_buf_set_keymap(0, "t", "<m-k>", [[<C-\><C-n><C-W>k]], opts)
--     vim.api.nvim_buf_set_keymap(0, "t", "<m-l>", [[<C-\><C-n><C-W>l]], opts)
-- end
