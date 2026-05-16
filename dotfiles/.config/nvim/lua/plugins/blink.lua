----------------------------------------------------------------------------------
-- Autocompletion engine, for handy documentation when scrolling found matches. --
----------------------------------------------------------------------------------

return {
	-- https://github.com/saghen/blink.cmp
	dir = "~/.config/nvim/github/blink.cmp",
	version = "1.*",
	opts = {
		keymap = { preset = "default" },
		completion = { documentation = { auto_show = true } },
	},
}
