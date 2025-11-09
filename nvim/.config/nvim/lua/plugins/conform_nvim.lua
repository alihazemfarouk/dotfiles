return {
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        '<leader>f',
        function()
          require('conform').format { async = true }
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    opts = {
      format_on_save = {
        lsp_format = 'fallback',
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'reorder-python-imports', 'ruff_format' },
        javascript = { 'prettierd', 'eslint_d' },
        typescript = { 'prettierd', 'eslint_d' },
        typescriptreact = { 'prettierd', 'eslint_d' },
        javascriptreact = { 'prettierd', 'eslint_d' },
        go = { 'goimports', 'gofumpt' },
        terraform = { 'terragrunt_hclfmt' },
        hcl = { 'terragrunt_hclfmt' },
        tf = { 'terragrunt_hclfmt' },
        sql = { 'sqlfmt' },
        markdown = { 'prettierd' },
      },
    },
  },
}
