local status_ok, hlslens = pcall(require, 'hlslens')
if not status_ok then
    -- Fix * (Keep the cursor position, don't move to next match)
    vim.keymap.set('n', '*', '*N', { noremap = true, silent = true })

    -- Fix n and N. Keeping cursor in center
    vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })
    vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })

    return
end

hlslens.setup({
    calm_down = true,
    nearest_only = true,
    nearest_float_when = 'always',
})

vim.api.nvim_set_keymap('n', 'n',
    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>zz]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N',
    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>zz]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>N]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>cc', ':noh<CR>', { noremap = true, silent = true })
