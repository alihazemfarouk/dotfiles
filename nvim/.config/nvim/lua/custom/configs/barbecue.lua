local barbecue_ui = require "barbecue.ui"

require("barbecue").setup {
  create_autocmd = false,
  attach_navic = false,
}

barbecue_ui.update()

vim.api.nvim_create_autocmd({
  "WinScrolled",
  "BufWinEnter",
  "CursorHold",
  "InsertLeave",
  "BufModifiedSet",
}, {
  group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  callback = function()
    barbecue_ui.update()
  end,
})
