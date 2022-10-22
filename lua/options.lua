-- Map leader to space
vim.g.maplocalleader = ' '
vim.g.mapleader = ' '

vim.opt.hidden = true
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 5

-- UI preferences
vim.opt.number = true
vim.opt.numberwidth = 5
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.ruler = true
vim.opt.cmdheight = 2
vim.opt.laststatus = 0
vim.opt.mouse = 'a'
vim.g.foldcolum = true

-- Editing experience
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Makes neovim and host OS clipboard play nicely with each other
vim.opt.clipboard = 'unnamedplus'

-- Undo and backup options
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.swapfile = false

-- Better buffer splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
vim.opt.signcolumn = 'yes'
