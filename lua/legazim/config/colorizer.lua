local status_ok, colorizer = pcall(require, 'colorizer')
if not status_ok then
    return
end

local opts = {
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    AARRGGBB = true, -- 0xAARRGGBB hex codes
    rgb_fn = true, -- CSS rgb() and rgba() functions
    hsl_fn = true, -- CSS hsl() and hsla() functions
    css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    tailwind = true, -- Enable tailwind colors
}

colorizer.setup({
    filetypes = {
        '*';
        css = opts,
        html = opts,
        php = opts,
        javascript = opts,
    }
})