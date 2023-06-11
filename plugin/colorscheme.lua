require("catppuccin").setup({
    transparent_background = true,
    styles = { 
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
})

require("tokyonight").setup({
    transparent = true,
    styles = {
        functions = {}
    },
    sidebars = { "qf", "vista_kind", "terminal", "packer" },
})

local color = color or "catppuccin-mocha"
vim.cmd.colorscheme(color)
