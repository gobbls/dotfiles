------------------------
-- Neovim preferences --
------------------------

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.completeopt = "fuzzy,menuone,noselect,popup"

-- Ignore providers.
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

--------------------
-- Config modules --
--------------------

require("config.lazy")
require("config.keymaps")
require("config.lsp")
require("config.autocmds")

----------
-- Misc --
----------

-- Set colorscheme after the plugin was loaded.
vim.cmd("colorscheme mellifluous")

-- Change the nvim-tree root folder fg color (was too dark).
vim.cmd([[ :hi NvimTreeRootFolder guifg=#5b5b5b ]])
