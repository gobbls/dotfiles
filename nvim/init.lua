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

-- Preset a column in the gutter for linting symbols.
vim.opt.signcolumn = "yes"

-- Ignore Neovim providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Fetch the lazy configs
require("config.keymaps")
require("config.lazy")
