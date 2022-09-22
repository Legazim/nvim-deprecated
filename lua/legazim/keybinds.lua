local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Use Alt + hjkl to resize windows
map('n', '<M-k>', '<Cmd>resize +2<CR>', {noremap = true})
map('n', '<M-j>', '<Cmd>resize -2<CR>', {noremap = true})
map('n', '<M-l>', '<Cmd>vertical resize +2<CR>', {noremap = true})
map('n', '<M-h>', '<Cmd>vertical resize -2<CR>', {noremap = true})

-- Shortcut to normal mode
map('i', 'jk', '<ESC>', {noremap = true})
map('i', 'kj', '<ESC>', {noremap = true})

-- Buffer navigation
map('n', '<Tab>', '<Cmd>bn<Cr>')
map('n', '<S-Tab>', '<Cmd>bp<Cr>')

-- Better tabbing in visual mode
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Save file
map('n', '<C-s>', '<CMD>w<CR>')

-- Quit neovim
map('n', '<C-Q>', '<CMD>q<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<Cmd>move .+1<CR>')
map('n', '<C-k>', '<Cmd>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Telescope
map('n', '<leader>f', '<Cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true})
map('n', '<leader>g', '<Cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true})
map('n', '<leader>i', '<Cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true})
map('n', '<leader>;', '<Cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true})
map('n', '<leader>h', '<Cmd>lua require("telescope.builtin").oldfiles()<cr>')

-- map('n', '<leader>q', ':NvimTreeCollapse<CR>')
map('n', '<leader>n', '<Cmd>NvimTreeFocus<CR>')
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>')
map('n', '<C-f>', '<Cmd>NvimTreeFindFile<CR>')

-- LazyGit
map('n', '<leader>\\', '<Cmd>LazyGit<CR>')
