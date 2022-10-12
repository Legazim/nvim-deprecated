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

return packer.startup(function(use)

    use { 'wbthomason/packer.nvim' } -- Have packer manage itself
    use { 'nvim-lua/plenary.nvim' } -- Useful lua functions used by lots of plugins
    use { 'kyazdani42/nvim-web-devicons' } -- Icons
    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" } -- Better highlighting

    -- Navigation
    use { 'nvim-telescope/telescope.nvim' } -- Fuzzy finder
    use { 'kyazdani42/nvim-tree.lua', } -- File explorer

    -- Cmp plugins
	use { 'hrsh7th/nvim-cmp' } -- The completion plugin
	use { 'hrsh7th/cmp-buffer' } -- buffer completions
	use { 'hrsh7th/cmp-path' } -- path completions
	use { 'hrsh7th/cmp-cmdline' } -- Cmdline completions
	use { 'hrsh7th/cmp-nvim-lua' } -- Lua completions
	use { 'hrsh7th/cmp-nvim-lsp' } -- Lsp completions

    -- Snippets
    use { 'L3MON4D3/LuaSnip' } -- Snippets engine
	use { 'saadparwaiz1/cmp_luasnip' } -- snippet completions
    use { 'rafamadriz/friendly-snippets' } -- Snippets for multiple languages

    -- LSP
    use { 'neovim/nvim-lspconfig' } -- enable LSP
    use { 'williamboman/mason.nvim' } -- simple to use language server installer
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'WhoIsSethDaniel/mason-tool-installer.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim' }  -- for formatters and linters

    -- UI
    use { 'nvim-lualine/lualine.nvim' } -- Linebar
    use { 'petertriho/nvim-scrollbar' } -- Scrollbar
    use { 'akinsho/bufferline.nvim' } -- Tabs for open buffers

    -- Visual aids
    use { 'folke/trouble.nvim' } -- Error lens
    use { 'lewis6991/gitsigns.nvim' } -- See changes since last commit
    use { 'NvChad/nvim-colorizer.lua' } -- Colors
    use { 'lukas-reineke/indent-blankline.nvim' } -- indent lines
    use { 'p00f/nvim-ts-rainbow' } -- Backets pairs

    --Themes
    use { 'folke/tokyonight.nvim' }
    use { 'Mofiqul/dracula.nvim' }

    -- UX
    use { 'echasnovski/mini.nvim' } -- Comment, highlight word on cursor, indent scope
    use { 'tpope/vim-surround' } -- parentheses, brackets, quotes etc
    use { 'windwp/nvim-autopairs' } -- Autopairs, integrates with both cmp and treesitter
    -- TODO: Add trimmer for whitespace
    use { 'folke/which-key.nvim' }

    -- navigation
    use { 'mg979/vim-visual-multi' } -- Multiple Cursors
    use { 'phaazon/hop.nvim' } -- Hop

    -- Better terminal
    use { 'kdheepak/lazygit.nvim' } -- Better view git

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
