return {
  {
    'folke/tokyonight.nvim',
    enabled = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'catppuccin/nvim',
    enabled = false,
    name = 'catppuccin',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },
}
