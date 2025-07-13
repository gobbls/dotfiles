-- Editor preference
-- vim.opt.tabstop = 8
-- vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- init.lua
require("config.keymaps")
require("config.lazy")
