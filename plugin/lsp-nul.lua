local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        formatting.fish_indent,                                                                          --fish
        diagnostics.fish,
        formatting.black,                                                                                -- python
        diagnostics.flake8,
        formatting.latexindent,                                                                          -- latex
        formatting.stylua.with({
            extra_args = { "--quote-style ForceDouble", "--indent-type Spaces", "--indent-width 4" } }), --lua
    },
})
