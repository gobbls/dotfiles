------------------------------------------------------
-- For handy preview of markdown files once parsed. --
------------------------------------------------------

return {
	"iamcco/markdown-preview.nvim",
	commit = "a923f5f",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && npm install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
}
