local status_ok, lualine = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>n', ':NvimTreeFocus<CR>', opts)
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-f>', ':NvimTreeFindFile<CR>', opts)

lualine.setup({
    filters = {
        dotfiles = false,
    },
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
                { key = "<Leader>v", action = "vsplit" },
                { key = "<Leader>s", action = "split" },
            },
        },
    },
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        indent_markers = {
            enable = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
    },
})
