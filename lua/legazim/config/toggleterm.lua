local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

-- " set
-- autocmd TermEnter term://*toggleterm#*
--       \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
--
-- " By applying the mappings this way you can pass a count to your
-- " mapping to open a specific window.
-- " For example: 2<C-t> will open terminal 2
-- nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
-- inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
vim.cmd [[autocmd TermEnter term://*toggleterm#*
       \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<Cr>]]
vim.keymap.set('n', '<C-t>', '<Cmd>exe v:count1 . "ToggleTerm"<Cr>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-t>', '<esc><Cmd>exe v:count1 . "ToggleTerm"<Cr>', { noremap = true, silent = true })


toggleterm.setup {
    size = 20,
    open_mapping = [[<C-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    close_on_exit = true,
    shell = vim.o.shell,
    direction = 'horizontal', -- 'vertical' | 'horizontal' | 'window' | 'float',
    float_opts = { -- Only relevant in float
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    winblend = 3,
    -- highlights = {
    --     border = "Normal",
    --     background = "Normal",
    -- }
}

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "kj", [[<C-\><C-n>]], opts)

    vim.api.nvim_buf_set_keymap(0, "t", "<m-h>", [[<C-\><C-n><C-W>h]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<m-j>", [[<C-\><C-n><C-W>j]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<m-k>", [[<C-\><C-n><C-W>k]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<m-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
