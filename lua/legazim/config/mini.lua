require('mini.comment').setup()
require('mini.cursorword').setup()

require('mini.starter').setup({
    header = nil,
    footer = 'Ó Senhor dos Exércitos,\ncomo é feliz aquele que em ti confia!\nSalmos 84:12'
})

require('mini.indentscope').setup({
    draw = {
        delay = 0,
    },
    gen_animation = 'none',
    mappings = {
        goto_top = '[i',
        goto_bottom = ']i',
    },
    options = {
        indent_at_cursor = false,
        try_as_border = true,
    },

    -- Which character to use for drawing scope indicator
    symbol = '╎',
})
