return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "typescript", "svelte", "javascript", "html", "css", "python", "markdown" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
