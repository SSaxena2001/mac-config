return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
				terminal_colors = true,
				styles = {
					keywords = { italic = true },
					constants = { italic = false, bold = true, underline = true },
					functions = { italic = false },
					comments = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
				lualine_bold = true,
				sidebars = { "qf", "vista_kind", "terminal", "packer", "fzf" },
				on_highlights = function(hl, c)
					hl["Type"] = { underline = true, fg = c.yellow }
				end,
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
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				commentStyle = { italic = true },
				keywordStyle = { italic = true },
				transparent = true,
				terminalColors = true,
			}
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = true,
		priority = 1000, -- Ensure it loads first
		opts = function()
			return {
				options = {
					transparency = true,
					terminal_colors = true,
					lualine_transparency = true,
					cursorline = true,
				},
				highlights = {
					Comment = { italic = true },
					Directory = { bold = true },
					ErrorMsg = { italic = true, bold = true },
				},
				styles = {
					comments = "italic",
					keywords = "italic",
				},
			}
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000, -- Ensure it loads first
		opts = function()
			return {
				options = {
					transparency = true,
					terminal_colors = true,
					lualine_transparency = true,
					cursorline = true,
				},
				highlights = {
					Comment = { italic = true },
					Directory = { bold = true },
					ErrorMsg = { italic = true, bold = true },
					Type = { underline = true, fg = "${yellow}" },
				},
				styles = {
					comments = "italic",
					keywords = "italic",
				},
			}
		end,
	},
}
