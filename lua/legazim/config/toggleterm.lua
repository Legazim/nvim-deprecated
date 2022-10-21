local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

vim.cmd [[autocmd TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<Cr>]]
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
}

function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)

    vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
    vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
