-- disable Netrw as the file-explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Editor preference
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c-i:block"

-- Preset a column in the gutter for linting symbols.
vim.opt.signcolumn = "yes"

-- Ignore Neovim providers
--vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Defer hoverProvider to pyright instead of ruff.
-- https://docs.astral.sh/ruff/editors/setup/#neovim
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client == nil then
			return
		end
		if client.name == "ruff" then
			-- Disable hover in favor of Pyright
			client.server_capabilities.hoverProvider = false
		end
	end,
	desc = "LSP: Disable hover capability from Ruff",
})

-- Fetch the lazy configs
require("config.keymaps")
require("config.lazy")
