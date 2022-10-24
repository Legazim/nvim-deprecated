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

local function pcallSetup(packageName)
    local package_ok, package = pcall(require, packageName)
    if not package_ok then
        return
    else
        return package.setup()
    end
end

return packer.startup(function(use)
    use { 'wbthomason/packer.nvim' } -- Have packer manage itself
    use { 'nvim-lua/plenary.nvim' } -- Useful lua functions used by lots of plugins
    use { 'lewis6991/impatient.nvim', config = function() require('impatient') end } -- Load nvim faster
    use { 'kyazdani42/nvim-web-devicons' } -- Icons

    -- User interface
    use { 'goolord/alpha-nvim' }
    use { 'folke/tokyonight.nvim' } -- Theme

    -- Motions
    use { 'sar/bbye.nvim', opt = true, cmd = { 'Bdelete', 'Bwipeout' } }

    -- Navigation
    use { 'kyazdani42/nvim-tree.lua', } -- File explorer
    use { 'nvim-telescope/telescope.nvim' } -- Fuzzy finder
    use { 'ThePrimeagen/harpoon' } -- Bookmark and navigate files

    -- Git
    use { 'lewis6991/gitsigns.nvim', config = pcallSetup('gitsigns') } -- Git made easy
    use { 'kdheepak/lazygit.nvim' } -- Better view git

    -- Easy formating
    use { 'tpope/vim-repeat' }
    use { 'numToStr/Comment.nvim', config = pcallSetup('Comment') } -- Commenting lines gcc
    use { 'tpope/vim-surround' } -- parentheses, brackets, quotes etc

    -- UI
    use { 'nvim-lualine/lualine.nvim' } -- Linebar
    use { 'akinsho/bufferline.nvim' } -- Tabs for open buffers
    use { 'folke/which-key.nvim', config = pcallSetup('which-key') } -- Helper

    -- Cmp plugins
    use { 'hrsh7th/nvim-cmp' } -- The completion plugin
    use { 'hrsh7th/cmp-buffer' } -- buffer completions
    use { 'hrsh7th/cmp-path' } -- path completions
    use { 'hrsh7th/cmp-cmdline' } -- Cmdline completions
    use { 'hrsh7th/cmp-nvim-lsp' } -- Lsp completions

    -- Snippets
    use { 'L3MON4D3/LuaSnip' } -- Snippets engine
    use { 'saadparwaiz1/cmp_luasnip' } -- Snippet completions
    use { 'rafamadriz/friendly-snippets' } -- Snippets for multiple languages

    -- LSP
    use { 'neovim/nvim-lspconfig' } -- enable LSP
    use { 'williamboman/mason.nvim' } -- simple to use language server installer
    use { 'williamboman/mason-lspconfig.nvim' } -- Lsp integration with Mason
    use { 'WhoIsSethDaniel/mason-tool-installer.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim' } -- for formatters and linters

    -- Usefull plugins
    use { 'folke/trouble.nvim' } -- Lsp explorer
    use { 'akinsho/toggleterm.nvim' } -- Toggle the terminal

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" } -- Better highlighting
    use { 'JoosepAlviste/nvim-ts-context-commentstring' } -- Support for embedded languages in files
    -- use { 'nvim-treesitter/playground' }
    use { 'nvim-treesitter/nvim-treesitter-context', config = pcallSetup('treesitter-context') } -- Sticky header
    use { 'p00f/nvim-ts-rainbow' } -- Backets pairs
    use { 'lukas-reineke/indent-blankline.nvim' } -- indent lines
    use { 'windwp/nvim-autopairs' } -- Autopairs, integrates with both cmp and treesitter
    use { 'windwp/nvim-ts-autotag' } -- Automatically end & rename tags

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
