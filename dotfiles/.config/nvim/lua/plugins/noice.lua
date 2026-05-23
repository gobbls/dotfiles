--------------------------------------------------
-- For pretty command inputs and notifications. --
--------------------------------------------------

return {
	"folke/noice.nvim",
	commit = "7bfd942",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			lsp_doc_border = true,
		},
	},
	config = function(_, opts)
		require("noice").setup(opts)
		-- stylua: ignore start
		vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { link = "TelescopeNormal" })
		vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderLua", { link = "DiagnosticInfo" })
		vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderHelp", { link = "DiagnosticOk" })
		vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { link = "DiagnosticInfo" })
		-- stylua: ignore end
	end,
}
