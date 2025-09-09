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
			"vimdoc",
			"tmux",
			"typescript",
			"javascript",
			"svelte",
			"css",
			"json",
			"jsonc",
			"ini",
			"markdown",
			"markdown_inline",
		},
		auto_install = true,
		highlight = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
