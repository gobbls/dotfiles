-------------------------
-- Pretty colorscheme. --
-------------------------

return {
	"ramojus/mellifluous.nvim",
	commit = "9948359e",
	lazy = false,
	priority = 1000,
	opts = {
		transparent_background = {
			-- enabled = true,
		},
		flat_background = {
			floating_windows = true,
		},
	},
	config = function(_, opts)
		require("mellifluous").setup(opts)
		vim.cmd("colorscheme mellifluous")
	end
}
