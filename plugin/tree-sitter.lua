require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "query", "python" },
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    auto_install = false,
    -- List of parsers to ignore installing (for "all")
    ignore_install = { "tex", "latex" },
    highlight = {
        enable = true,
        disable = { "tex", "latex" },
        additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    },
}

require'treesitter-context'.setup {}

vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context()
end, { silent = true })
