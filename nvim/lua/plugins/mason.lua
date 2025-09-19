return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = false,
			ensure_installed = {
				"bash-language-server",
				"css-lsp",
				"html-lsp",
				"lua-language-server",
				"marksman", -- markdown linting
				"omnisharp",
				"prettier",
				"pyright", -- for linting
				"ruff", -- for formatting
				"shfmt", -- formatting
				"stylua", -- formatting
				"svelte-language-server",
				"typescript-language-server",

				--"json-lsp", -- maybe don't need this
			},
		},
	},
	opts = {},
}
