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
					keywords = {},
					constants = { italic = true, bold = true },
					functions = {},
					comments = { italic = true },
					sidebars = "transparent",
					floats = "transparent",
				},
				lualine_bold = true,
				sidebars = { "qf", "vista_kind", "terminal", "packer", "fzf" },
				on_highlights = function(hl, c)
					hl["DiagnosticVirtualTextError"] = { bg = "none", fg = c.red }
					hl["DiagnosticVirtualTextWarn"] = { bg = "none", fg = c.yellow }
					hl["DiagnosticVirtualTextInfo"] = { bg = "none", fg = c.blue }
					hl["DiagnosticVirtualTextHint"] = { bg = "none", fg = c.cyan500 }
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
	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		opts = function()
			return {
				transparent = true,
				bold = true,
				italic = true,
				style = {
					boolean = "bold",
					number = "none",
					float = "none",
					error = "bold",
					comments = "italic",
					conditionals = "italic",
					functions = "underline",
					headings = "bold",
					operators = "none",
					strings = "none",
					variables = "none",

					-- keywords
					keywords = "none",
					keyword_return = "none",
					keywords_loop = "italic",
					keywords_label = "none",
					keywords_exception = "italic",

					-- builtin
					builtin_constants = "bold",
					builtin_functions = "none",
					builtin_types = "italic",
					builtin_variables = "none",
					plugins = {
						cmp = {
							match = "bold",
							match_fuzzy = "bold",
						},
						dashboard = {
							footer = "italic",
						},
						lsp = {
							diagnostic_error = "bold",
							diagnostic_hint = "none",
							diagnostic_info = "italic",
							diagnostic_ok = "none",
							diagnostic_warn = "bold",
						},
					},
				},
			}
		end,
	},
}
