----------------------------------------------------------
-- More (and prettier) information about open projects. --
----------------------------------------------------------

return {
	-- https://github.com/nvim-lualine/lualine.nvim
	dir = "~/.config/nvim/github/lualine.nvim",
	dependencies = {
		-- https://github.com/nvim-tree/nvim-web-devicons
		dir = "~/.config/nvim/github/nvim-web-devicons",
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
