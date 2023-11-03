return {
    { "folke/which-key.nvim",    lazy = true },
    {
        "norcalli/nvim-colorizer.lua",
        lazy = true,
        config = function()
            require("colorizer").setup()
        end,
    },
    { "dstein64/vim-startuptime" },
    { "mbbill/undotree" },
    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    -- lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "linrongbin16/lsp-progress.nvim",
        },
    },
    {
        "linrongbin16/lsp-progress.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lsp-progress").setup()
        end,
    },
    {
        "j-hui/fidget.nvim",
        tag = 'legacy',
        config = function()
            require("fidget").setup {}
        end
    },
    -- dashbord
    -- {
    --     "glepnir/dashboard-nvim",
    --     event = "VimEnter",
    --     config = function()
    --         require("dashboard").setup({})
    --     end,
    --     dependencies = { { "nvim-tree/nvim-web-devicons" } },
    -- },
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
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
        "nvim-treesitter/nvim-treesitter-context",
    },
    { "lukas-reineke/indent-blankline.nvim" },
    -- useless
    { "eandrju/cellular-automaton.nvim" },

    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    -- lsp
    {
        "vonheikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- lsp support
            { "neovim/nvim-lspconfig" }, -- required
            {                            -- optional
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "masonupdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" }, -- optional

            -- autocompletion
            { "hrsh7th/nvim-cmp" },     -- required
            { "hrsh7th/cmp-nvim-lsp" }, -- required
        },
    },
    -- git
    { "tpope/vim-fugitive" },
    -- snipets
    -- { "l3mon4d3/luasnip" },
    -- { "saadparwaiz1/cmp_luasnip" },
    { "SirVer/ultisnips" },
    -- vimtex
    {
        "lervag/vimtex",
    },
    -- vim-tmux-navigator
    -- {'christoomey/vim-tmux-navigator', lazy = false},
    -- navigation
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump({
                        search = {
                            mode = function(str)
                                return "\\<" .. str
                            end,
                        },
                    })
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "o", "x" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r",
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Flash Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
    },
    -- colorschemes
    "folke/tokyonight.nvim",
    { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
}
