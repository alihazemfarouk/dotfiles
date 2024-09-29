return {
  'stevanmilic/nvim-lspimport',
  keys = {
    {
      '<leader>ii',
      require('lspimport').import,
      desc = 'Import',
    },
  },
}

