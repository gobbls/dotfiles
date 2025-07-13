return {
	"neovim/nvim-lspconfig",
	dependencies = {
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
		}
	},
	config = function()
		require("lspconfig").lua_ls.setup {}
		require("lspconfig").ts_ls.setup {}
		require("lspconfig").svelte.setup {}
		require("lspconfig").cssls.setup {}
	end
}
