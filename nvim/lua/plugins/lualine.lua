return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"rebelot/kanagawa.nvim",
	},
	lazy = false,
	opts = {
		options = {
			icons_enabled = true,
			theme = function()
				local theme = require("kanagawa.colors").setup().theme
				local kanagawa = {}

				kanagawa.normal = {
					a = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
					b = { bg = theme.diff.change, fg = theme.syn.fun },
					c = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
				}
				kanagawa.insert = {
					a = { bg = theme.diag.ok, fg = theme.ui.bg },
					b = { bg = theme.ui.bg, fg = theme.diag.ok },
				}
				kanagawa.visual = {
					a = { bg = theme.syn.keyword, fg = theme.ui.bg },
					b = { bg = theme.ui.bg, fg = theme.syn.keyword },
				}
				kanagawa.replace = {
					a = { bg = theme.syn.constant, fg = theme.ui.bg },
					b = { bg = theme.ui.bg, fg = theme.syn.constant },
				}
				kanagawa.command = {
					a = { bg = theme.syn.operator, fg = theme.ui.bg },
					b = { bg = theme.ui.bg, fg = theme.syn.operator },
				}
				kanagawa.inactive = {
					a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
					c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				}

				return kanagawa
			end,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = false,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
				refresh_time = 16, -- ~60fps
				events = {
					"WinEnter",
					"BufEnter",
					"BufWritePost",
					"SessionLoadPost",
					"FileChangedShellPost",
					"VimResized",
					"Filetype",
					"CursorMoved",
					"CursorMovedI",
					"ModeChanged",
				},
			},
		},
		sections = {
			lualine_a = { "''", "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_c = { "filename" },
			lualine_x = { "location" },
		},
	},
}
