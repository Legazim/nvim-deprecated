local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
})

-- Plugins
return packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- Have packer manage itself

    -- UI
    use { 'glepnir/dashboard-nvim' }
    use { 'nvim-lualine/lualine.nvim' } -- Linebar
    use { 'kyazdani42/nvim-web-devicons' } -- Icons for telescope
    use { 'nvim-treesitter/nvim-treesitter' } -- Better highlighting
    --Themes
    -- use { 'folke/tokyonight.nvim' }
    use { 'Mofiqul/dracula.nvim' }
    use { 'kaicataldo/material.vim' }

    -- UX
    use { 'mg979/vim-visual-multi' } -- Multiple Cursors
    use { 'tpope/vim-commentary' } -- For Commenting gcc & gc
    use { 'tpope/vim-surround' } -- parentheses, brackets, quotes etc
    use { 'windwp/nvim-autopairs' } -- Autopairs, integrates with both cmp and treesitter

    -- Navigation
    use { 'kyazdani42/nvim-tree.lua', } -- File explorer
    use {
        'nvim-telescope/telescope.nvim', -- Fuzzy finder
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- Better terminal
    use { 'akinsho/toggleterm.nvim' } -- Enable terminal toggle
    use { 'kdheepak/lazygit.nvim' } -- Better view git

    -- Completion
    use { 'neoclide/coc.nvim', branch = 'release' } -- Intelisense

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
-- use {
--     'williamboman/mason.nvim',
--     requires = {
--         -- LSP
--         'williamboman/mason-lspconfig.nvim',
--         'neovim/nvim-lspconfig',
--         -- DAP
--         'mfussenegger/nvim-dap',
--         -- Linters
--         'mfussenegger/nvim-lint',
--         -- Formaters
--         'mhartington/formatter.nvim',
--         -- Mason tools manager
--         'WhoIsSethDaniel/mason-tool-installer.nvim'
--     }
-- }
