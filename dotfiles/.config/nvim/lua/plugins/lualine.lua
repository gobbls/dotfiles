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
			lualine_x = { "encoding" },
		},
	},
}
