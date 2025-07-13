-- Editor preference
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Fetch the lazy configs
require("config.keymaps")
require("config.lazy")
