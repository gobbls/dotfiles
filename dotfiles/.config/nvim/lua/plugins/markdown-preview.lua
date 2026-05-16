------------------------------------------------------
-- For handy preview of markdown files once parsed. --
------------------------------------------------------

return {
	-- https://github.com/iamcco/markdown-preview.nvim
	dir = "~/.config/nvim/github/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
}
