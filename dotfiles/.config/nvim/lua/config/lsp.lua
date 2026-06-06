-----------------
-- LSP Configs --
-----------------

-- https://docs.astral.sh/ruff/editors/setup/#neovim

-- Python LSP, configure pyright capabilites not supported by ruff.
vim.lsp.config("pyright", {
	-- pyright was configured to use 'utf-16' out-of-the-box, clashing with ruff.
	offset_encoding = "utf-8",
	settings = {
		pyright = {
			-- Using Ruff's import organizer.
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				-- Ignore all files for analysis to exclusively use Ruff for linting.
				ignore = { "*" },
			},
		},
	},
	handlers = {
		-- Suppresses noisy blank progress messages
		["$/progress"] = function() end,
	},
})

-- Python LSP, disable ruff capability that is left up to pyright.
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup(
		"lsp_attach_disable_ruff_hover",
		{ clear = true }
	),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client == nil then
			return
		end
		if client.name == "ruff" then
			-- Disable hover in favor of Pyright
			client.server_capabilities.hoverProvider = false
		end
	end,
})

-- HTML LSP, wider line-wrapping.
vim.lsp.config("html", {
	settings = {
		html = {
			format = {
				wrapLineLength = 160,
			},
		},
	},
})

-----------------
-- Enable LSPs --
-----------------

vim.lsp.enable({
	"ruff",
	"pyright",
	"lua_ls",
	"bashls",
	"stylua",
	"html",
	"cssls",
	"roslyn_ls",
	"svelte",
	"ts_ls",
	"jsonls",
})
