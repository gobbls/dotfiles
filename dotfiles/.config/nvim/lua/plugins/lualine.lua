----------------------------------------------------------
-- More (and prettier) information about open projects. --
----------------------------------------------------------

return {
	"nvim-lualine/lualine.nvim",
	commit = "131a558",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	opts = {
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { { "''", "mode" } },
			lualine_c = { { "filename", path = 1 } },
			lualine_x = {
				{ "encoding" },
				{
					require("noice").api.status.message.get,
					cond = require("noice").api.status.message.has,
				},
				{
					require("noice").api.status.command.get,
					cond = require("noice").api.status.command.has,
					color = { fg = "#ff9e64" },
				},
				{
					require("noice").api.status.mode.get,
					cond = require("noice").api.status.mode.has,
					color = { fg = "#ff9e64" },
				},
				{
					require("noice").api.status.search.get,
					cond = require("noice").api.status.search.has,
					color = { fg = "#ff9e64" },
				},
			},
		},
	},
}
