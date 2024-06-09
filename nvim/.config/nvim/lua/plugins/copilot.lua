return {
  'github/copilot.vim',
  event = 'BufRead',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
  keys = {
    { '<C-j>', 'copilot#Accept("\\<CR>")', mode = { 'i' }, desc = 'Accept Copilot suggestion', expr = true, replace_keycodes = false },
  },
}
