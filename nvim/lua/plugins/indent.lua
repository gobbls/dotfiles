return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│",
			tab_char = "│",
		},
		scope = { show_start = false, show_end = false },
		exclude = {
			filetypes = {
				"dashboard",
				"lazy",
				"mason",
				"notify",
			},
		},
	},
}
