return {
  'saghen/blink.cmp',
  lazy = false, -- lazy loading handled internally

  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono',
    },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      documentation = {
        auto_show = true,
        update_delay_ms = 100,
        window = {
          min_width = 15,
          max_width = 50,
          max_height = 15,
          border = vim.g.borderStyle,
        },
      },
    },
    signature = { enabled = true },
    keymap = { preset = 'super-tab' },
  },
}
