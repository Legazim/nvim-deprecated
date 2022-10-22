local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = { enable = true, disable = { "css" }, },
    autopairs = { enable = true, },
    indent = { enable = true, disable = { "python", "css", "html" } },
    rainbow = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        config = {
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
            }
        }
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    }
})

vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#ffd700]])
vim.cmd([[ autocmd FileType * highlight rainbowcol2 guifg=#da70d6]])
vim.cmd([[ autocmd FileType * highlight rainbowcol3 guifg=#87cefa]])
vim.cmd([[ autocmd FileType * highlight rainbowcol4 guifg=#ff7b33]])
vim.cmd([[ autocmd FileType * highlight rainbowcol5 guifg=#94ed54]])
vim.cmd([[ autocmd FileType * highlight rainbowcol6 guifg=#ff9797]])

local context_ok, treesitter_context = pcall(require, 'treesitter-context')
if context_ok then
    treesitter_context.setup()
end
