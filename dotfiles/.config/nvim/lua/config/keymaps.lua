----------------
-- Neovim QoL --
----------------

vim.keymap.set(
	{ "n" },
	"<leader>q",
	"<CMD>q<CR>",
	{ desc = "Close the current tab / window." }
)

vim.keymap.set(
	{ "n" },
	"<leader>Q",
	"<CMD>qa!<CR>",
	{ desc = "Exit current session without saving current changes." }
)

vim.keymap.set(
	{ "n", "x" },
	"j",
	"v:count == 0 ? 'gj' : 'j'",
	{ expr = true, silent = true, desc = "Use j like regular once lines wrap." }
)

vim.keymap.set(
	{ "n", "x" },
	"k",
	"v:count == 0 ? 'gk' : 'k'",
	{ expr = true, silent = true, desc = "Use k like regular once lines wrap." }
)

vim.keymap.set(
	{ "n", "v", "x" },
	"<leader>yy",
	'"+y<CR>',
	{ desc = "Yank to system clipboard." }
)

vim.keymap.set("n", "<leader>cl", function()
	local col = vim.api.nvim_get_option_value("colorcolumn", {})
	if col == "" then
		vim.api.nvim_set_option_value("colorcolumn", "80", {})
	else
		vim.api.nvim_set_option_value("colorcolumn", "", {})
	end
end, { desc = "Toggle color-column at col 80." })

vim.keymap.set(
	"n",
	"<leader>dd",
	"<CMD>lua vim.diagnostic.open_float()<CR>",
	{ desc = "Open lint diagnostics." }
)

vim.keymap.set(
	"n",
	"<leader>lf",
	vim.lsp.buf.format,
	{ desc = "Run LSP formatter on buffer." }
)

vim.keymap.set("n", "gd", function()
	vim.lsp.buf.definition({
		on_list = function(options)
			if not options or not options.items or #options.items == 0 then
				return
			end

			local item = options.items[1]
			local current_file = vim.api.nvim_buf_get_name(0)
			local target_file = item.filename

			if current_file ~= target_file and target_file ~= nil then
				vim.cmd("tabedit " .. vim.fn.fnameescape(target_file))
			end

			vim.api.nvim_win_set_cursor(0, { item.lnum, item.col - 1 })
		end,
	})
end, { desc = "Go to definition: New tab if different file." })

---------------------
-- Plugin specific --
---------------------

-- Telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set(
	"n",
	"<leader>ff",
	telescope_builtin.find_files,
	{ desc = "Telescope find files." }
)
vim.keymap.set(
	"n",
	"<leader>fg",
	telescope_builtin.live_grep,
	{ desc = "Telescope live grep." }
)
vim.keymap.set(
	"n",
	"<leader>fb",
	telescope_builtin.buffers,
	{ desc = "Telescope buffers." }
)
vim.keymap.set(
	"n",
	"<leader>fh",
	telescope_builtin.help_tags,
	{ desc = "Telescope help tags." }
)

-- LazyGit
vim.keymap.set(
	"n",
	"<leader>lg",
	"<CMD>LazyGit<CR>",
	{ desc = "Open LazyGit." }
)

-- Nvim-tree
vim.keymap.set(
	"n",
	"<leader>e",
	"<CMD>NvimTreeToggle<CR>",
	{ desc = "Toggle Nvim-tree." }
)
