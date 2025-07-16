-- Keymaps

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
-- vim.keymap.set("n", "j", "gj", { desc = "Up", noremap = true })
-- vim.keymap.set("n", "k", "gk", { desc = "Down", noremap = true })

-- (stolen from LazyVim)[https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua]
-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Open Netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exit editor
vim.keymap.set("n", "<leader>qq", vim.cmd.q)

-- Open NvimTree
-- vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle, { desc = "NeovimTree"})
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle, { desc = "NeovimTree"})
