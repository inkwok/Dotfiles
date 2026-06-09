local M = {}

vim.opt.list = true
vim.opt.listchars = {
  trail = "·",
}

M.override = {
    Comment = { fg = "#ff8800", italic = true },
    ["@comment"]= { fg = "#ff8800", italic = true },

    Keyword = { fg = "#ffd700", bold = true },
    Conditional = { fg = "#ffd700", bold = true },
    Repeat = { fg = "#ffd700", bold = true },
    Statement = { fg = "#ffd700", bold = true },

    String = { fg = "#00ff66" },
    ['@character'] = { fg = "#00ff66" },

    Identifier = { fg = "#ffffff" },
    Function = { fg = "#ffffff" },
    Type = { fg = "#8f8f8f" },
    Constant = { fg = "#ffffff" },
    Operator = { fg = "#ffffff" },

    ["@keyword"] = { fg = "#ffd700", bold = true },
    ["@keyword.function"] = { fg = "#ffd700", bold = true },
    ["@keyword.return"] = { fg = "#ffd700", bold = true },
    ["@keyword.repeat"] = { fg = "#ffd700", bold = true },
    ["@keyword.conditional"] = { fg = "#ffd700", bold = true },
    ["@keyword.operator"] = { fg = "#ffd700", bold = true },
    ["@keyword.directive.define"] = { fg = "#ffd700", bold = true },
    ["@keyword.directive"] = { fg = "#ffd700", bold = true },
    ["Include"] = { fg = "#ffd700", bold = true },
    ["Structure"] = { fg = "#ffd700", bold = true },


    ["@string"] = { fg = "#00ff66" },
    ["@string.escape"] = { fg = "#00ff66" },

    ["@function"] = { fg = "#ffffff" },
    ["@variable"] = { fg = "#ffffff" },


    DiagnosticError = { fg = "#ff0000" },
    DiagnosticSignError = { fg = "#ff0000" },
    DiagnosticVirtualTextError = { fg = "#ff0000" },
    DiagnosticUnderlineError = { undercurl = true, sp = "#ff0000" },
    ["@type.builtin"] = { fg = "#8f8f8f" },


    DiagnosticHint = { fg = "#aa00aa" },
    DiagnosticWarn = { fg = "#ffd700" },
    DiagnosticSignWarn = { fg = "#ffd700" },
    DiagnosticVirtualTextWarn = { fg = "#ffd700" },
    DiagnosticUnderlineWarn = { undercurl = true, sp = "#ffd700" },

    vim.api.nvim_set_hl(0, "St_errors", { fg = "#ff0000", bold = true }),
    vim.api.nvim_set_hl(0, "St_lspError", { fg = "#ff0000", bold = true }),
    vim.api.nvim_set_hl(0, "St_warnings", { fg = "#ffd700", bold = true }),
    vim.api.nvim_set_hl(0, "St_lspWarning", { fg = "#ffd700", bold = true }),
    vim.api.nvim_set_hl(0, "St_hints", { fg = "#aa0aaa", bold = true }),
    vim.api.nvim_set_hl(0, "St_lspHints", { fg = "#aa00aa", bold = true }),
}

return M
