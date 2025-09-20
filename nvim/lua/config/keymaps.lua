vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Better up/down stolen from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "NeovimTree" })
vim.keymap.set("n", "<leader>d", "<CMD> lua vim.diagnostic.open_float() <CR>", { desc = "Open wrapped lint-message." })

vim.keymap.set("n", "<leader>cl", function()
	local col = vim.api.nvim_get_option_value("colorcolumn", {})
	if col == "0" then
		vim.api.nvim_set_option_value("colorcolumn", "80", {})
	else
		vim.api.nvim_set_option_value("colorcolumn", "0", {})
	end
end, { desc = "Toggle colored bar at column 80." })

-- Open Netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
