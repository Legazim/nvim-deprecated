-- Colorscheme
vim.cmd [[
try
    colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
endtry
]]

-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- No numbers on terminals
vim.cmd [[autocmd TermOpen * setlocal nonumber norelativenumber]]

-- Highlight the region on yank
local num_au = vim.api.nvim_create_augroup('legazim', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual' })
    end,
})

-- Highlight words and matches
vim.cmd [[
function! HighlightWordUnderCursor()
    let disabled_ft = ["qf", "fugitive", "NvimTree", "gundo", "diff", "fzf", "floaterm"]
    if &diff || &buftype == "terminal" || index(disabled_ft, &filetype) >= 0
        return
    endif
    if getline(".")[col(".")-1] !~# '\[\[:punct:][:blank:\]\]'
        hi MatchWord cterm=undercurl gui=undercurl guibg=#3b404a
        exec 'match' 'MatchWord' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction

augroup MatchWord
  autocmd!
  autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
augroup END
]]
