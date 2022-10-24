local status_ok, harpoon = pcall(require, 'harpoon')
if not status_ok then
    return
end

vim.keymap.set('n', ';m', ':lua require("harpoon.mark").toggle_file()<cr>', { noremap = true, silent = true })
vim.keymap.set('n', ';c', ':lua require("harpoon.mark").clear_all()<cr>', { noremap = true })
vim.keymap.set('n', ';;', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', { noremap = true })
vim.keymap.set('n', ';n', ':lua require("harpoon.ui").nav_next()<cr>', { noremap = true })
vim.keymap.set('n', ';p', ':lua require("harpoon.ui").nav_prev()<cr>', { noremap = true })

vim.keymap.set('n', ';1', ':lua require("harpoon.ui").nav_file(1)<cr>', { noremap = true })
vim.keymap.set('n', ';2', ':lua require("harpoon.ui").nav_file(2)<cr>', { noremap = true })
vim.keymap.set('n', ';3', ':lua require("harpoon.ui").nav_file(3)<cr>', { noremap = true })
vim.keymap.set('n', ';4', ':lua require("harpoon.ui").nav_file(4)<cr>', { noremap = true })
vim.keymap.set('n', ';5', ':lua require("harpoon.ui").nav_file(5)<cr>', { noremap = true })
vim.keymap.set('n', ';6', ':lua require("harpoon.ui").nav_file(6)<cr>', { noremap = true })
vim.keymap.set('n', ';7', ':lua require("harpoon.ui").nav_file(7)<cr>', { noremap = true })
vim.keymap.set('n', ';8', ':lua require("harpoon.ui").nav_file(8)<cr>', { noremap = true })
vim.keymap.set('n', ';9', ':lua require("harpoon.ui").nav_file(9)<cr>', { noremap = true })

harpoon.setup()
