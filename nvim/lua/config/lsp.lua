-----------------
-- Enable LSPs --
-----------------

-- Add html highlighting alongside csharp highlighting.
vim.lsp.config("roslyn", {
    on_attach = function()
        vim.cmd('set syntax=html')
    end,
})

-- For the LSP to be able to open clangd (as the LSP error log says),
-- the FQBN of the intended board (target) has to be provided.
-- NOTE: Remember to intall the Core definition after updating the index.
-- `arduino-cli core install "rp2040:rp2040"`, this FQBN is then amongt the installed ones.
vim.lsp.config("arduino_language_server", {
  cmd = {
    "arduino-language-server",
    "-clangd", "/usr/bin/clangd",
    "-cli", "/usr/bin/arduino-cli",
    "-cli-config", "/home/gobbls/.arduino15/arduino-cli.yaml",
    "-fqbn", "rp2040:rp2040:vccgnd_yd_rp2040",
  }
})

vim.lsp.enable({
    "ts_ls",
    "lua_ls",
    "roslyn_ls",
    "arduino_language_server",
})
