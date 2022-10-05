local o = vim.o
local g = vim.g
local opt = vim.opt

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"

-- Map <leader> to space
vim.g.maplocalleader = ' '
vim.g.mapleader = ' '

o.hidden = true
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 300

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 3

-- UI preferences
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.cursorline = true
o.showmode = false
o.ruler = true
o.cmdheight = 2
o.laststatus = 0
g.foldcolumn = 1
o.mouse = 'a'

-- Editing experience
o.expandtab = true
o.smarttab = true
o.autoindent = true
o.wrap = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Better buffer splitting
o.splitbelow = true
o.splitright = true

-- Coc
o.shortmess = o.shortmess .. 'c'
o.signcolumn = 'yes'

-- Preserve view while jumping
-- o.jumpoptions = 'view'
