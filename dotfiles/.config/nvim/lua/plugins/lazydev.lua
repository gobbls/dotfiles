----------------------------------------------------------------------------
-- Used to load the `vim` namespace while working on Neovim config files. --
----------------------------------------------------------------------------

return {
	"folke/lazydev.nvim",
	commit = "ff2cbcba",
	ft = "lua",
	opts = {
		library = {
			-- See the configuration section for more details.
			-- Load luvit types when the `vim.uv` word is found.
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	},
}
