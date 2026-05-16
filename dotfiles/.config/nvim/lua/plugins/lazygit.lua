-------------------------------------------------------------
-- Super handy, easy access to LazyGit from inside Neovim. --
-------------------------------------------------------------

return {
	-- https://github.com/kdheepak/lazygit.nvim
	dir = "~/.config/nvim/github/lazygit.nvim",
	dependencies = {
		-- https://github.com/nvim-lua/plenary.nvim
		dir = "~/.config/nvim/github/plenary.nvim",
	},
	lazy = true,
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
}
