return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			bash = { "shfmt" },
			lua = { "stylua" },
			python = { "ruff_format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			svelte = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			--cs = { "csharpier" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		notify_on_error = true,
		notify_no_formatter = true,
	},
}
