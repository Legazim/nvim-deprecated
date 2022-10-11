local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = { enable = true, disable = { "css" }, },
    autopairs = { enable = true, },
    indent = { enable = true, disable = { "python", "css" } },
    rainbow = {
        enable = true,
    },
})

vim.cmd([[ autocmd FileType * highlight rainbowcol1 guifg=#ffd700]])
vim.cmd([[ autocmd FileType * highlight rainbowcol2 guifg=#da70d6]])
vim.cmd([[ autocmd FileType * highlight rainbowcol3 guifg=#87cefa]])
vim.cmd([[ autocmd FileType * highlight rainbowcol4 guifg=#ff7b33]])
vim.cmd([[ autocmd FileType * highlight rainbowcol5 guifg=#94ed54]])
vim.cmd([[ autocmd FileType * highlight rainbowcol6 guifg=#ff9797]])
