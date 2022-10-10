local status_ok, hop = pcall(require, 'hop')
if not status_ok then
    return
end

local opts = { noremap = true, silent = true }

vim.keymap.set(
    '', 'f',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opts)
vim.keymap.set(
    '', 'F',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opts)
vim.keymap.set(
    '', 't',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", opts)
vim.keymap.set(
    '', 'T',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", opts)
vim.keymap.set( '', '<leader>/', "<cmd>HopPattern<Cr>", opts)
vim.keymap.set( '', '<leader>l', "<cmd>HopLineStart<Cr>", opts)
vim.keymap.set( '', '<leader>k', "<cmd>HopAnywhere<Cr>", opts)
vim.keymap.set( '', '<leader>j', "<cmd>HopWord<Cr>", opts)

hop.setup()
