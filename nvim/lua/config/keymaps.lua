-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
-- Better up/down stolen from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Open lint-message in floating window
vim.keymap.set("n", "<leader>dd", "<CMD> lua vim.diagnostic.open_float() <CR>", { desc = "Open wrapped lint-message." })

-- Exit editor
vim.keymap.set("n", "<leader>qq", vim.cmd.q)

-- Open Netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Open NvimTree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "NeovimTree" })
