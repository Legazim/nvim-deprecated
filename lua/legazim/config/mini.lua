local comment_ok, mini_comment = pcall(require, 'mini.comment')
if comment_ok then
    mini_comment.setup()
else
    return
end

local cursorword_ok, mini_cursorword = pcall(require, 'mini.cursorword')
if cursorword_ok then
    mini_cursorword.setup()
else
    return
end

local starter_ok, mini_starter = pcall(require, 'mini.starter')
if starter_ok then
    mini_starter.setup({
        header = nil,
        footer = 'Ó Senhor dos Exércitos,\ncomo é feliz aquele que em ti confia!\nSalmos 84:12'
    })
else
    return
end

local indentscope_ok, indent_scope = pcall(require, 'mini.indentscope')
if indentscope_ok then
    indent_scope.setup({
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
else
    return
end
