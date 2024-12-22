return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				terminal_Colors = true,
				style = {
					sidebars = "transparent",
					floats = "transparent",
				},
				sidebars = { "qf", "vista_kind", "terminal", "packer" },
			}
		end,
	},
	{
		"navarasu/onedark.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				style = "deep",
				term_colors = true,
				lualine = {
					transparent = true,
				},
			}
		end,
	},
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim", -- required by telescope
			"MunifTanjim/nui.nvim",

			-- optional
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			-- configuration goes here
		},
	},
}
