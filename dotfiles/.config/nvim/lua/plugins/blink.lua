----------------------------------------------------------------------------------
-- Autocompletion engine, for handy documentation when scrolling found matches. --
----------------------------------------------------------------------------------

return {
	"saghen/blink.cmp",
	version = "1.*",
	commit = "35e3923",
	opts = {
		keymap = { preset = "default" },
		completion = { documentation = { auto_show = true } },
	},
}
