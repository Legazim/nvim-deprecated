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
map('n', '<C-k>', ':resize +2<CR>')
map('n', '<C-j>', ':resize -2<CR>')
map('n', '<C-l>', ':vertical resize +2<CR>')
map('n', '<C-h>', ':vertical resize -2<CR>')

-- Shortcut to normal mode
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')

-- Buffer navigation
map('n', '<leader>[', ':bp<Cr>')
map('n', '<leader>]', ':bn<Cr>')

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

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Clear search
map('n', '<leader>cc', ':noh<CR>')

-- Insert line
map('n', 'K', 'i<Cr><Esc>k$')

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

-- NvimTree
map('n', '<leader>n', ':NvimTreeFocus<CR>')
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<C-f>', ':NvimTreeFindFile<CR>')

-- LazyGit
map('n', '<leader>;', ':LazyGit<CR>')

-- Hop
map('', 'f', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('', 'F', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('', 't', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
map('', 'T', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
map('', '<leader>/', "<cmd>HopPattern<Cr>")
map('', '<leader>l', "<cmd>HopLineStart<Cr>")
map('', '<leader>k', "<cmd>HopAnywhere<Cr>")
map('', '<leader>j', "<cmd>HopWord<Cr>")
