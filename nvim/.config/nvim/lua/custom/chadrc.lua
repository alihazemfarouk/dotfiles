---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",
  hl_add = {
    DiagnosticUnderlineError = { undercurl = true, fg = "red" },
    DiagnosticUnderlineWarn = { undercurl = true, fg = "yellow" },
    DiagnosticUnderlineInfo = { undercurl = true, fg = "green" },
    DiagnosticUnderlineHint = { undercurl = true, fg = "purple" },
    CursorLine = {
      bg = "statusline_bg",
    },
    ColorColumn = {
      bg = "statusline_bg",
    },
  },
  statusline = {
    theme = "vscode_colored",
  },
  telescope = {
    style = "bordered",
  },
  cmp = {
    style = "flat_dark",
    selected_item_bg = "simple",
  },
  nvdash = {
    load_on_startup = true,
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
