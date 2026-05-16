-----------------------------------------------
-- Boot up the tree-sitter parser for Svelte --
-----------------------------------------------

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "svelte" },
	callback = function()
		vim.treesitter.start()
	end,
})
