local starter_ok, mini_starter = pcall(require, 'mini.starter')
if not starter_ok then
    return
else
    mini_starter.setup({
        footer = 'Ó Senhor dos Exércitos,\ncomo é feliz aquele que em ti confia!\nSalmos 84:12'
    })
end

local cursor_ok, cursorword = pcall(require, 'mini.cursorword')
if not cursor_ok then
    return
else
    cursorword.setup()
end
