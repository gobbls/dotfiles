-----------------
-- Enable LSPs --
-----------------

-- Add html highlighting alongside csharp highlighting.
vim.lsp.config("roslyn", {
    on_attach = function()
        vim.cmd('set syntax=html')
    end,
})

vim.lsp.enable({
    "ts_ls",
    "lua_ls",
    "roslyn_ls"
})
