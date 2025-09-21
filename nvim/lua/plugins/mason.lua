return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	opts = {
		automatic_enable = false,
		ensure_installed = {
			-- "bash-language-server"
			"bashls",

			-- "css-lsp"
			"cssls",

			-- "html-lsp"
			"html",

			-- "lua-language-server"
			"lua_ls",

			"marksman", -- markdown linting
			"omnisharp",
			"prettier",
			"pyright", -- for linting
			"ruff", -- for formatting
			"shfmt", -- formatting
			"stylua", -- formatting

			--"svelte-language-server",
			"svelte",

			-- "typescript-language-server",
			"ts_ls",

			"json-lsp", -- maybe don't need this
		},
	},
}
