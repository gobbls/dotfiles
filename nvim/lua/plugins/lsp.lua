return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"folke/lazydev.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local lspconfig = require("lspconfig")
		local diagnostics = function()
			vim.diagnostic.config({
				underline = true,
				update_in_insert = false,
				virtual_text = {
					spacing = 4,
					source = "if_many",
					prefix = "●",
				},
			})
		end
		local lsp_keymaps = function()
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
			vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = 0 })
			vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
			vim.keymap.set("n", "<leader>fr", require("telescope.builtin").lsp_references, { buffer = 0 })
		end
		lspconfig.bashls.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})

		-- pyright and ruff works along eachother, as recomenended by ruff docs:
		-- "Currently, the server is intended to be used alongside another Python Language Server \
		-- in order to support features like navigation and autocompletion."
		-- https://docs.astral.sh/ruff/editors/
		lspconfig.pyright.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
			-- fix offset encoding error (either ruff or pyright uses utf-16, force utf-8)
			offset_encoding = "utf-8",
			settings = {
				pyright = {
					-- Using Ruff's import organizer
					disableOrganizeImports = true,
				},
				python = {
					analysis = {
						-- Ignore all files for analysis to exclusively use Ruff for linting
						ignore = { "*" },
					},
				},
			},
		})
		lspconfig.ruff.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
			-- fix offset encoding error (either ruff or pyright uses utf-16, force utf-8)
			offset_encoding = "utf-8",
			init_options = {
				settings = {
					logLevel = "debug",
				},
			},
		})

		lspconfig.ts_ls.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		lspconfig.svelte.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		lspconfig.html.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		lspconfig.marksman.setup({
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
		local pid = vim.fn.getpid()
		local omnisharp_bin = "/home/a13k5/.local/share/nvim/mason/bin/OmniSharp"
		lspconfig.omnisharp.setup({
			cmd = {
				omnisharp_bin,
				"-z",
				"--hostPID",
				tostring(pid),
				"DotNet:enablePackageRestore=false",
				"--encoding",
				"utf-8",
				"--languageserver",
			},
			capabilities = capabilities,
			on_attach = lsp_keymaps and diagnostics,
		})
	end,
}
