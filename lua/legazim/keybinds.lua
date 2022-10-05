local function map(mode, keybind, associated)
    vim.keymap.set(mode, keybind, associated, { silent = true })
end

-- Use Alt + hjkl to resize windows
map('n', '<M-k>', ':resize +2<CR>', {noremap = true})
map('n', '<M-j>', ':resize -2<CR>', {noremap = true})
map('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})
map('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})

-- Shortcut to normal mode
map('i', 'jk', '<ESC>', {noremap = true})
map('i', 'kj', '<ESC>', {noremap = true})

-- Buffer navigation
map('n', '<Tab>', ':bn<Cr>')
map('n', '<S-Tab>', ':bp<Cr>')

-- Better tabbing
map('n', '<leader><', '<<')
map('n', '<leader>>', '>>')
map('v', '<', '<gv')
map('v', '>', '>gv')

map('i', '<M-h>', '<C-o>h')
map('i', '<M-k>', '<C-o>k')
map('i', '<M-j>', '<C-o>j')
map('i', '<M-l>', '<C-o>l')

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Easy dd
map('n', '<leader>d', 'dd')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Save file
map('n', '<C-s>', ':w<CR>')

-- Quit neovim
map('n', '<C-Q>', ':q<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', ':move .+1<CR>')
map('n', '<C-k>', ':move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Telescope
map('n', '<leader>f', ':lua require("telescope.builtin").find_files()<cr>')
map('n', '<leader>i', ':lua require("telescope.builtin").help_tags()<cr>')
map('n', '<leader>;', ':lua require("telescope.builtin").buffers()<cr>')
map('n', '<leader>h', ':lua require("telescope.builtin").oldfiles()<cr>')

-- NvimTree
map('n', '<leader>n', ':NvimTreeFocus<CR>')
map('n', '<leader>e', ':NvimTreeToggle<CR>')
map('n', '<C-f>', ':NvimTreeFindFile<CR>')

-- LazyGit
map('n', '<leader>\\', ':LazyGit<CR>')

-- Hop
map('', 'f', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('', 'F', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('', 't', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>")
map('', 'T', "<cmd>lua require('hop').hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>")
map('', '<leader>/', "<cmd>HopPattern<Cr>")
map('', '<leader>j', "<cmd>HopWord<Cr>")
