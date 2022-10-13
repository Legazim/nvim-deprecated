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
