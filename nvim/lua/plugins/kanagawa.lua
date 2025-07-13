return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	-- This package refuses to use 'opts', so 'config' is required.
	config = function()
		require("kanagawa").setup({
			transparent = true,
			colors = {
					theme = {
							all = {
									ui = {
											bg_gutter = "none",
											-- trying to make Telescope borders not have background.
											--float = {
											--	bg = "none"
											--}
									}
							}
					}
			}
		})
		vim.cmd("colorscheme kanagawa")
	end,
}
