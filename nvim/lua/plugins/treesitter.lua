return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"c",
			"bash",
			"regex",
			"lua",
			"vim",
			"typescript",
			"javascript",
			"svelte",
			"css",
			"json",
			"markdown",
			"markdown_inline",
			"vimdoc",
		},
		auto_install = true,
		highlight = { enable = true }
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end
}
