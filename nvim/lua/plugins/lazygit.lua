-------------------------------------------------------------
-- Super handy, easy access to LazyGit from inside Neovim. --
-------------------------------------------------------------

return {
	"kdheepak/lazygit.nvim",
	commit = "a04ad0db",
	dependencies = {
		"nvim-lua/plenary.nvim",
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
