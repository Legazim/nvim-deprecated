local status_ok, hop = pcall(require, 'hop')
if not status_ok then
    return
end

vim.keymap.set(
    '', 'f',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
    , { noremap = true, silent = true })
vim.keymap.set(
    '', 'F',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
    , { noremap = true, silent = true })
vim.keymap.set(
    '', 't',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
    , { noremap = true, silent = true })
vim.keymap.set(
    '', 'T',
    "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>"
    , { noremap = true, silent = true })
vim.keymap.set('', '<leader>/', "<cmd>HopPattern<Cr>", { noremap = true, silent = true })
vim.keymap.set('', '<leader>l', "<cmd>HopLineStart<Cr>", { noremap = true, silent = true })
vim.keymap.set('', '<leader>k', "<cmd>HopAnywhere<Cr>", { noremap = true, silent = true })
vim.keymap.set('', '<leader>j', "<cmd>HopWord<Cr>", { noremap = true, silent = true })

hop.setup()
