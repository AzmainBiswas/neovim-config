return {
    "folke/which-key.nvim",
    { "lukas-reineke/indent-blankline.nvim" },-- indent indecator
    'chrisbra/Colorizer',
    -- telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- lualine 
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- nvim-tree
--     {
--         "nvim-tree/nvim-tree.lua",
--         version = "*",
--         dependencies = {
--             "nvim-tree/nvim-web-devicons",
--         },
--         config = function()
--             require("nvim-tree").setup {}
--         end,
--     },
    -- tree-sitter
    {
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, 
        'nvim-treesitter/nvim-treesitter-context',
    },
    "eandrju/cellular-automaton.nvim",

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
        }
    },
    -- Snipets
    {'L3MON4D3/LuaSnip'},
    { 'saadparwaiz1/cmp_luasnip' },
    -- vimtex 
    'lervag/vimtex',
    -- vim-tmux-navigator
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
    },
    -- colorschemes
    "folke/tokyonight.nvim",
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
}
