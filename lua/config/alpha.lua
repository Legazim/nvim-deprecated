local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")
local theta = require("alpha.themes.theta")

theta.config.layout[6] = { -- Buttons
    type = "group",
    val = {
        { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("e", "  New file", "<cmd>ene<CR>"),
        dashboard.button("SPC f f", "  Find file"),
        dashboard.button("SPC f g", "  Live grep"),
        dashboard.button("c", "  Configuration", "<cmd>e $MYVIMRC<CR>"),
        dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
        dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
    },
    position = "center",
}

alpha.setup(theta.config)
