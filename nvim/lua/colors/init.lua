-- Set built-in colorscheme.
vim.cmd("colorscheme habamax")

-- Customizing some colors.
local hi = vim.api.nvim_set_hl
local vertSplit = vim.api.nvim_get_hl(0, { name = "VertSplit" })

-- Base colors.
hi(0, "Normal", { bg = "none" })

-- Tabline.
hi(0, "TablineSel", { bg = vertSplit.bg, fg = "purple" })
hi(0, "TablineFill", { bg = "none" })

-- Completion menu.
hi(0, "NormalFloat", { bg = "none" })
hi(0, "FloatBorder", { fg = "purple" })

-- Commandbar menu.
hi(0, "BlinkCmpMenu", { bg = "none" })
hi(0, "BlinkCmpMenuBorder", { bg = "none" })
hi(0, "BlinkCmpKind", { bg = "none", fg = "orange" })
