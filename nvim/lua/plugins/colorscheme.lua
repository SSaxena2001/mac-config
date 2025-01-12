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
					keywords = { italic = true, bold = true },
					constants = { bold = true },
					types = { undercurl = true },
					sidebars = "transparent",
					floats = "transparent",
				},
				lualine_bold = true,
				sidebars = { "qf", "vista_kind", "terminal", "packer", "fzf" },
				on_highlights = function(hl, c)
					hl.TelescopeNormal = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopeBorder = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopePromptNormal = {
						bg = c.bg_dark,
					}
					hl.TelescopePromptBorder = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopePromptTitle = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopePreviewTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopeResultsTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
				end,
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
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				undercurl = true,
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
}
