---------------------------------------------------
-- For a clear overview of the current codebase. --
---------------------------------------------------

return {
	"nvim-tree/nvim-tree.lua",
	commit = "24cfcc94",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	opts = {},
	config = function(_, opts)
		require('nvim-tree').setup(opts)
		vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#5b5b5b", bg = "NONE" })
	end
}
