return {
  'zbirenbaum/copilot.lua',
  event = 'BufRead',
  config = function()
    require('copilot').setup {
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        keymap = {
          accept = '<C-j>',
        },
      },
    }
  end,
}
