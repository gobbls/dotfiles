----------------------------------------------------------------------------------
-- Autocompletion engine, for handy documentation when scrolling found matches. --
----------------------------------------------------------------------------------

return {
	"saghen/blink.cmp",
	version = "1.*",
	commit = "35e3923",
	lazy = false,
	opts = {
		keymap = { preset = "default" },
		completion = {
			documentation = {
				auto_show = true,
			},
		},
	},
	config = function(_, opts)
		require('blink.cmp').setup(opts)
		vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "Normal" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "Normal" })
		vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { link = "String" })
	end
}
