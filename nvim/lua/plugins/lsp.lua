return {
	"neovim/nvim-lspconfig",
	{ "mason-org/mason-lspconfig.nvim", config = function() end },
	dependencies = {
		"folke/lazydev.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local lsp_keymaps = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer = 0})
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer = 0})
			vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer = 0})
			vim.keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, {buffer = 0})
		end
		lspconfig.lua_ls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		lspconfig.ts_ls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		lspconfig.svelte.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		lspconfig.cssls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		lspconfig.html.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
	end
}
