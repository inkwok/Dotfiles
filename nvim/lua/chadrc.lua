-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tsoding",
    hl_override = require("highlights").override,
}

M.ui = {
    statusline = {
        theme = "vscode", -- or "vscode", "minimal", "default"
    },
}
vim.schedule(function()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "FloatBorder",
    "SignColumn",
    "EndOfBuffer",
    "WinSeparator",
    "VertSplit",
    "Pmenu",
    "PmenuSel",
    "TelescopeNormal",
    "TelescopeBorder",
    "NvimTreeNormal",
    "NvimTreeNormalNC",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "#000000", fg = "#ffffff" })
  end
end)

return M
