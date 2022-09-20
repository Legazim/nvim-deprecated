require("nvim-tree").setup({
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
