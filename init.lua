-- Basic settings
require('legazim.settings')
require('legazim.plugins')
require('legazim.keybinds')

vim.cmd('colorscheme tokyonight')

-- Plugins config
require('legazim.config.coc')
require('legazim.config.lualine')
require('legazim.config.mini-nvim')
require('legazim.config.nvim-tree')
require('legazim.config.telescope')
require('legazim.config.toggleterm')
require('legazim.config.trim')
