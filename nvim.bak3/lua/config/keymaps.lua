-- Keymaps

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Up, Down
vim.keymap.set("n", "j", "gj", { desc = "Up", noremap = true })
vim.keymap.set("n", "k", "gk", { desc = "Down", noremap = true })

-- Netrw leader-keybind
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
