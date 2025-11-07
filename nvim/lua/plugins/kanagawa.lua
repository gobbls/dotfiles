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
								bg = "#3e3e3e",
								bg_sel = "#8e8e8e",
								bg_thumb = "#FFFFFF",
								bg_sbar = "#00FF00",
							},
							float = {
								bg = "none",
								bg_border = "none",
							}
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
					TelescopeTitle             = { fg = theme.vcs.changed, bold = true },
					TelescopePromptBorder      = { fg = theme.vcs.changed },
					TelescopeResultsBorder     = { fg = theme.vcs.changed },
					TelescopePreviewBorder     = { fg = theme.vcs.changed },

					--NoiceCmdlinePopupBorder = { fg = theme.vcs.changed },

					NormalFloat                = { bg = "none" },
					FloatBorder                = { bg = "none" },
					FloatTitle                 = { bg = "none" },

					DiagnosticVirtualTextHint  = makeDiagnosticColor(theme.diag.hint),
					DiagnosticVirtualTextInfo  = makeDiagnosticColor(theme.diag.info),
					DiagnosticVirtualTextWarn  = makeDiagnosticColor(theme.diag.warning),
					DiagnosticVirtualTextError = makeDiagnosticColor(theme.diag.error),
				}
			end,
		})
		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
