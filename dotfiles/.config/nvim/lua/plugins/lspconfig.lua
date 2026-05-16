----------------------------------------------------------------------------------------
-- Used for common LSP boilerplate configurations. Uses Blink.cmp to extend features. --
----------------------------------------------------------------------------------------

return {
	-- https://github.com/neovim/nvim-lspconfig.git
	dir = "~/.config/nvim/github/nvim-lspconfig",
	dependencies = {
		-- https://github.com/saghen/blink.cmp
		dir = "~/.config/nvim/github/blink.cmp",
	},
}
