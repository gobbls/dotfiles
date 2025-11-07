vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.colorcolumn = "80"
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.winborder = "rounded"

-- ignore providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- better up and down when lines wrap
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- QOA
vim.keymap.set('n', '<leader>e', '<Cmd>Ex<CR>')
vim.keymap.set("n", "<leader>d", "<CMD> lua vim.diagnostic.open_float() <CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
-- copy to system clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>yy", '"+y<CR>')
-- cut to system clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>dd", '"+d<CR>')

-- toggle color-column at col 80
vim.keymap.set("n", "<leader>cl", function()
	local col = vim.api.nvim_get_option_value("colorcolumn", {})
	if col == "0" then
		vim.api.nvim_set_option_value("colorcolumn", "80", {})
	else
		vim.api.nvim_set_option_value("colorcolumn", "0", {})
	end
end, { desc = "Toggle colored bar at column 80." })

-- auto cmd for lsp omnicompletion
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
vim.cmd("set completeopt+=noselect")

-- enable LSPs
vim.lsp.enable({ "lua_ls", "ts_ls", "svelte" })

require("config.lazy")
