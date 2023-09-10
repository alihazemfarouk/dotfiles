local api = vim.api

-- Lazy shift finger commands
api.nvim_create_user_command("W", "write", {})
api.nvim_create_user_command("Wa", "wa", {})
api.nvim_create_user_command("WA", "wa", {})
api.nvim_create_user_command("Wq", "wq", {})
api.nvim_create_user_command("WQ", "wq", {})
api.nvim_create_user_command("Wqa", "wqa", {})
api.nvim_create_user_command("WQa", "wqa", {})
api.nvim_create_user_command("Q", "quit", {})
api.nvim_create_user_command("QA", "quitall", {})
api.nvim_create_user_command("Qa", "quitall", {})

-- Enable yank highlighting
vim.cmd [[
  augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank({timeout = 35})
  augroup END
]]

-- required because of disabled netrw
api.nvim_create_user_command("Browse", function(opts)
  local args = vim.fn.shellescape(opts.args, 1)
  local cmd = "silent !open " .. args
  api.nvim_command(cmd)
end, { nargs = 1 })

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Auto select virtualenv on Nvim open",
  pattern = "*",
  callback = function()
    local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
    if venv ~= "" then
      require("venv-selector").retrieve_from_cache()
    end
  end,
  once = true,
})
