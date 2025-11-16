return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			transparent = true,
			colors = {
				theme = {
					dragon = {
						ui = {
							bg_gutter = "none",
							pmenu = {
								bg = "#181616",
								bg_sel = "#393826",
								bg_thumb = "#8992a7",
								bg_sbar = "#625e5a",
							},
							float = {
								bg = "none",
								fg_border = "#dcd7ba",
								bg_border = "none",
							},
						},
					},
				},
			},
			overrides = function(colors)
				local theme = colors.theme
				local makeDiagnosticColor = function(color)
					local c = require("kanagawa.lib.color")
					return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
				end
				return {
					TelescopeTitle = { fg = theme.vcs.changed, bold = true },
					TelescopePromptBorder = { fg = theme.vcs.changed },
					TelescopeResultsBorder = { fg = theme.vcs.changed },
					TelescopePreviewBorder = { fg = theme.vcs.changed },

					--NoiceCmdlinePopupBorder = { fg = theme.vcs.changed },

					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },

					DiagnosticVirtualTextHint = makeDiagnosticColor(theme.diag.hint),
					DiagnosticVirtualTextInfo = makeDiagnosticColor(theme.diag.info),
					DiagnosticVirtualTextWarn = makeDiagnosticColor(theme.diag.warning),
					DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
				}
			end,
		})
		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
