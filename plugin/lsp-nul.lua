local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
-- local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        formatting.black,
        formatting.latexindent,
        formatting.stylua.with({
            extra_args = { "--quote-style ForceDouble", "--indent-type Spaces", "--indent-width 4" } }),
    },
})
