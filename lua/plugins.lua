return {
	{ "folke/which-key.nvim", lazy = true },

	{ "dstein64/vim-startuptime" },
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
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
	-- dashbord
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({})
		end,
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
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
		{ "nvim-treesitter/nvim-treesitter", build = ":tsupdate" },
		"nvim-treesitter/nvim-treesitter-context",
	},
	-- useless
	{ "eandrju/cellular-automaton.nvim" },

	-- lsp
	{
		"vonheikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- lsp support
			{ "neovim/nvim-lspconfig" }, -- required
			{ -- optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "masonupdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- optional

			-- autocompletion
			{ "hrsh7th/nvim-cmp" }, -- required
			{ "hrsh7th/cmp-nvim-lsp" }, -- required
		},
	},
	{ "jose-elias-alvarez/null-ls.nvim" },
	-- git
	{ "tpope/vim-fugitive" },
	-- snipets
	{ "l3mon4d3/luasnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	-- vimtex
	"lervag/vimtex",
	-- vim-tmux-navigator
	-- {'christoomey/vim-tmux-navigator', lazy = false},
	-- colorschemes
	"folke/tokyonight.nvim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
}
