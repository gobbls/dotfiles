--------------------------------------------------------
-- Better and more friendly project file exploration. --
--------------------------------------------------------

return {
	"nvim-telescope/telescope.nvim",
	commit = "5255aa27",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim" },
	},
	opts = {
		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},
}
