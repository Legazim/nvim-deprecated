local status_ok, harpoon = pcall(require, 'harpoon')
if not status_ok then
    return
end

local opts = { noremap = true }
vim.keymap.set('n', ';m', ':lua require("harpoon.mark").add_file()<cr>', opts)
vim.keymap.set('n', ';;', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
vim.keymap.set('n', ';n', ':lua require("harpoon.ui").nav_next()<cr>', opts)
vim.keymap.set('n', ';p', ':lua require("harpoon.ui").nav_prev()<cr>', opts)
vim.keymap.set('n', ';1', ':lua require("harpoon.ui").nav_file(1)<cr>', opts)
vim.keymap.set('n', ';2', ':lua require("harpoon.ui").nav_file(2)<cr>', opts)
vim.keymap.set('n', ';3', ':lua require("harpoon.ui").nav_file(3)<cr>', opts)
vim.keymap.set('n', ';4', ':lua require("harpoon.ui").nav_file(4)<cr>', opts)
vim.keymap.set('n', ';t', ':lua require("harpoon.term").gotoTerminal(1)<cr>', opts)

harpoon.setup()
