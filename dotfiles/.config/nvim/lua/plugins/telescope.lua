--------------------------------------------------------
-- Better and more friendly project file exploration. --
--------------------------------------------------------

return {
	-- https://github.com/nvim-telescope/telescope.nvim.git
	dir = "~/.config/nvim/github/telescope.nvim",
	dependencies = {
		-- https://github.com/nvim-lua/plenary.nvim
		{ dir = "~/.config/nvim/github/plenary.nvim" },
		-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
		{ dir = "~/.config/nvim/github/telescope-fzf-native.nvim" },
	},
	opts = {
		pickers = {
			find_files = {
				-- Disable `nvim-web-devicons` icons in the file-picker.
				disable_devicons = true,
			},
			live_grep = {
				disable_devicons = true,
			},
		},
	},
}
