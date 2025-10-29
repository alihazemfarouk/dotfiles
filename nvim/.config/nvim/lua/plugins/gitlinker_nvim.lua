return {
  'linrongbin16/gitlinker.nvim',
  cmd = 'GitLink',
  keys = {
    { '<leader>gY', '<cmd>GitLink!<cr>', mode = { 'n', 'v' }, desc = 'Open git link' },
  },
  config = function()
    require('gitlinker').setup()
  end,
}
