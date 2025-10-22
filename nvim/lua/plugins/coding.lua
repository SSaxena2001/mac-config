return {
	{
		enabled = false,
		"folke/flash.nvim",
		---@type Flash.Config
		opts = {
			search = {
				forward = true,
				multi_window = false,
				wrap = false,
				incremental = true,
			},
		},
	},

	{
		"brenoprata10/nvim-highlight-colors",
		event = "BufReadPre",
		opts = {
			render = "background",
			enable_hex = true,
			enable_short_hex = true,
			enable_rgb = true,
			enable_hsl = true,
			enable_hsl_without_function = true,
			enable_ansi = true,
			enable_var_usage = true,
			enable_tailwind = true,
		},
	},

	{
		"dinhhuy258/git.nvim",
		event = "BufReadPre",
		opts = {
			keymaps = {
				-- Open blame window
				blame = "<Leader>gb",
				-- Open file/folder in git repository
				browse = "<Leader>go",
			},
		},
	},
	{
		"kazhala/close-buffers.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>th",
				function()
					require("close_buffers").delete({ type = "hidden" })
				end,
				"Close Hidden Buffers",
			},
			{
				"<leader>tu",
				function()
					require("close_buffers").delete({ type = "nameless" })
				end,
				"Close Nameless Buffers",
			},
		},
	},

	{
		"saghen/blink.cmp",
		opts = {
			completion = {
				menu = {
					winblend = vim.o.pumblend,
				},
			},
			signature = {
				window = {
					winblend = vim.o.pumblend,
				},
			},
			appearance = {
				kind_icons = {
					Text = "",
					-- Method = "",
					-- Function = "",
					-- Constructor = "",
					Field = "",
					Variable = "",
					-- Class = "",
					Interface = "ﰮ",
					Module = "",
					Property = "",
					Unit = "",
					Value = "",
					Enum = "",
					Keyword = "",
					Snippet = "﬌",
					Color = "",
					File = "",
					Reference = "",
					Folder = "",
					EnumMember = "",
					Constant = "",
					Struct = "",
					Event = "",
					Operator = "ﬦ",
					TypeParameter = "",
				},
			},
		},
	},

	{
		"snacks.nvim",
		lazy = false,
		priority = 1000,
		keys = {
			{
				"<leader>fP",
				function()
					Snacks.picker.files({ cwd = require("lazy.core.config").options.root })
				end,
				desc = "Find Plugin File",
			},
			{
				";f",
				function()
					Snacks.picker.files({ hidden = true, include_ignored = false })
				end,
				desc = "Lists files in your current working directory, respects .gitignore",
			},
			{
				";r",
				function()
					Snacks.picker.grep({ rg_opts = "--hidden --color=always --line-number --column" })
				end,
				desc = "Live Grep (shows hidden, uses .gitignore)",
			},
			{
				"\\",
				function()
					Snacks.picker.buffers()
				end,
				desc = "Lists open buffers",
			},
			{
				";t",
				function()
					Snacks.picker.help()
				end,
				desc = "Lists available help tags",
			},
			{
				";;",
				function()
					Snacks.picker.resume()
				end,
				desc = "Resume previous Snacks picker",
			},
			{
				";e",
				function()
					Snacks.picker.diagnostics()
				end,
				desc = "Lists diagnostics",
			},
			{
				";s",
				function()
					Snacks.picker.lsp_symbols()
				end,
				desc = "Lists function names/variables from Treesitter",
			},
			{
				"sf",
				function()
					local buffer_dir = vim.fn.expand("%:p:h")
					Snacks.explorer({ cwd = buffer_dir })
				end,
				desc = "Open File Explorer with buffer path",
			},
			{
				"gd",
				function()
					vim.cmd("tab split")
					Snacks.picker.lsp_definitions()
				end,
				desc = "Goto Definition",
			},
		},
	},
}
