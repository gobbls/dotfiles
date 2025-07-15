return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"mason.nvim",
		{
			"mason-org/mason-lspconfig.nvim",
			config = function() end
		},
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				}
			}
		},
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
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
		require("lspconfig").lua_ls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		require("lspconfig").ts_ls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		require("lspconfig").svelte.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
		require("lspconfig").cssls.setup {
			capabilities = capabilities,
			on_attach = lsp_keymaps
		}
	end
}
