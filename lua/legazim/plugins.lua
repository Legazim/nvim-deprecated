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
    use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter

    use { 'nvim-lualine/lualine.nvim' } -- Linebar
    -- use { 'Mofiqul/dracula.nvim' } -- Theme dracula
    use { 'folke/tokyonight.nvim' }
    use { 'kyazdani42/nvim-web-devicons' } -- Icons for telescope
    use { 'nvim-treesitter/nvim-treesitter' } -- Better highlighting
    use { 'mg979/vim-visual-multi' } -- Multiple Cursors
    use { 'tpope/vim-commentary' } -- For Commenting gcc & gc
    use { 'nvim-telescope/telescope.nvim' } -- Fuzzy finder
    use { 'nvim-lua/plenary.nvim' } -- telescope dependency
    use { 'kyazdani42/nvim-tree.lua', } -- File explorer
    use { 'akinsho/toggleterm.nvim' }
    use { 'tpope/vim-surround' } -- parentheses, brackets, quotes etc
    use { 'neoclide/coc.nvim', branch = 'release' } -- Intelisense
    use { 'kdheepak/lazygit.nvim' }
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

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
