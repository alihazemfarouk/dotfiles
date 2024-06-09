return {
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap', 'mfussenegger/nvim-dap-python' },
    config = true,
    keys = {
      {
        '<leader>vs',
        '<cmd>:VenvSelect<cr>',
        '<leader>vc',
        '<cmd>:VenvSelectCached<cr>',
      },
    },
    init = function()
      vim.api.nvim_create_autocmd('VimEnter', {
        desc = 'Auto select virtualenv Nvim open',
        pattern = '*',
        callback = function()
          local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
          if venv ~= '' then
            require('venv-selector').retrieve_from_cache()
          end
        end,
        once = true,
      })
    end,
  },
}
