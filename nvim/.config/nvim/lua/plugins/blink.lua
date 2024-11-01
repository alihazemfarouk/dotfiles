return {
  'saghen/blink.cmp',
  lazy = false, -- lazy loading handled internally

  dependencies = 'rafamadriz/friendly-snippets',
  version = 'v0.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    highlight = {
      use_nvim_cmp_as_default = true,
    },
    nerd_font_variant = 'mono',

    windows = {
      documentation = {
        min_width = 15,
        max_width = 50,
        max_height = 15,
        border = vim.g.borderStyle,
        auto_show = true,
        auto_show_delay_ms = 250,
      },
    },

    accept = { auto_brackets = { enabled = true } },
    trigger = { signature_help = { enabled = true } },

    keymap = 'super-tab',
  },
}
