local function map(mode, keybind, associated, opts)
    local options = opts or { silent = true }
    vim.keymap.set(mode, keybind, associated, options)
end

-- Fix problem where <C-z> freezes the terminal (in windows powershell)
local function CtrlZ()
    if vim.fn.has('win32') then
        return '<nop>'
    else
        return '<C-z>'
    end
end

map('', '<C-z>', CtrlZ())

-- Use Alt + hjkl to resize windows
map('n', '<M-Down>', ':resize -2<CR>')
map('n', '<M-Up>', ':resize +2<CR>')
map('n', '<M-Right>', ':vertical resize +2<CR>')
map('n', '<M-Left>', ':vertical resize -2<CR>')

-- -- Better window navigation
-- map('n', '<C-h>', '<C-w>h')
-- map('n', '<C-j>', '<C-w>j')
-- map('n', '<C-k>', '<C-w>k')
-- map('n', '<C-l>', '<C-w>l')

-- Shortcut to normal mode
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

-- Buffer navigation
map('n', '<C-l>', ':bn<Cr>')
map('n', '<C-h>', ':bp<Cr>')

-- Better tabbing
map('n', '<Tab>', '>>')
map('n', '<S-Tab>', '<<')
map('n', '<leader><', '<<')
map('n', '<leader>>', '>>')
map('v', '<Tab>', '>gv')
map('v', '<S-Tab>', '<gv')
map('v', '>', '>gv')
map('v', '<', '<gv')

-- Navigation in insert mode
map('i', '<M-h>', '<C-o>h')
map('i', '<M-k>', '<C-o>k')
map('i', '<M-j>', '<C-o>j')
map('i', '<M-l>', '<C-o>l')

-- Clear search
map('n', '<leader>cc', ':noh<CR>')

-- Insert line
-- map('n', 'K', 'i<Cr><Esc>k$')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Save file
map('n', '<C-s>', ':w<CR>')

-- Quit buffer
map('n', '<C-q>', ':bd<Cr>')

-- Comparing files
map('n', '<leader>da', ':windo diffthis<Cr>')
map('n', '<leader>dt', ':diffthis<Cr>')
map('n', '<leader>do', ':windo diffoff<Cr>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<M-j>', ':move .+1<CR>')
map('n', '<M-k>', ':move .-2<CR>')
map('x', '<M-j>', ":move '>+1<CR>gv=gv")
map('x', '<M-k>', ":move '<-2<CR>gv=gv")

-- LazyGit
map('n', '<leader>;', ':LazyGit<CR>')
