return {
  {
    'stevanmilic/nvim-lspimport',
    keys = {
      { '<leader>ai', '<cmd lua require("lspimport").import() <CR>', { desc = 'LSP Import' } },
    },
  },
}
