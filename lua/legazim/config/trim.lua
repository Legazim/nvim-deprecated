  require('trim').setup({
    -- if you want to ignore filetypes.
    disable = {
        "markdown",
    },

    -- if you want to ignore space of top
    -- patterns = {
    --   [[%s/\s\+$//e]],
    --   [[%s/\($\n\s*\)\+\%$//]],
    --   [[%s/\(\n\n\)\n\+/\1/]],
    -- },
  })
