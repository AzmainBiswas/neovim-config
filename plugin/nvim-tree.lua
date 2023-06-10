require("nvim-tree").setup {
    disable_netrw = false,
    view = {
        width = 30,
    },
    filters = {
        custom = { ".git$", ".pyc$", "__pycache__" },
    },
    renderer = {
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
        special_files = {},
        icons = {
            show = {
                folder_arrow = false,
            },
            glyphs = {
                default = "",
                folder = {
                },
            },
        },
    },
}

vim.keymap.set("n", "<leader>vp" , vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>vf" , vim.cmd.NvimTreeFocus)
