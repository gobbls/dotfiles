return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,
	-- This package refuses to use "opts", so "config" is required.
	config = function()
		require("kanagawa").setup({
			transparent = true,
			colors = {
				theme = {
					wave = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			overrides = function(colors)
				local theme = colors.theme
				return {
					TelescopeTitle = { fg = theme.vcs.changed, bold = true },
					TelescopePromptBorder = { fg = theme.vcs.changed },
					TelescopeResultsBorder = { fg = theme.vcs.changed },
					TelescopePreviewBorder = { fg = theme.vcs.changed },
					NoiceCmdlinePopupBorder = { fg = theme.vcs.changed },
				}
			end,
		})
		vim.cmd("colorscheme kanagawa-wave")
	end,
}
