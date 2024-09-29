return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap', 'mfussenegger/nvim-dap-python' },
    branch = 'regexp',
    lazy = false,
    keys = {
      {
        '<leader>vs',
        '<cmd>:VenvSelect<cr>',
        '<leader>vc',
        '<cmd>:VenvSelectCached<cr>',
      },
    },
    config = function()
      require('venv-selector').setup {}
    end,
  },
}
