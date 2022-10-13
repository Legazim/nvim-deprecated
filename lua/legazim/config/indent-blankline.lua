vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

local status_ok, indent_blankline = pcall(require, 'indent_blankline')
if not status_ok then
    return
end

indent_blankline.setup {
    char = '▎',
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    -- char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    --     "IndentBlanklineIndent3",
    --     "IndentBlanklineIndent4",
    --     "IndentBlanklineIndent5",
    --     "IndentBlanklineIndent6",
    -- },
}

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ffd700 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#da70d6 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#87cefa gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#ff7b33 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#94ed54 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#ff9797 gui=nocombine]]

-- indicator_icon = "▎",
-- buffer_close_icon = "",
-- buffer_close_icon = '',
-- modified_icon = "●",
-- close_icon = "",
-- close_icon = '',
-- left_trunc_marker = "",
-- right_trunc_marker = "",
