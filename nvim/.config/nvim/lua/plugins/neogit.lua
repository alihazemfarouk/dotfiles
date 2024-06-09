return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    event = 'VeryLazy',
    config = true,
    keys = {
      { '<leader>ng', '<cmd> Neogit <CR>', { desc = 'Neogit' } },
    },
  },
}
