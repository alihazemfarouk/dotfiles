return {
  { -- Autoformat
    'stevearc/conform.nvim',
    lazy = false,
    keys = {
      {
        '<leader>fm',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = true,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'reorder-python-imports', 'ruff_format' },
        javascript = { 'prettierd', 'eslint' },
        typescript = { 'prettierd', 'eslint' },
        typescriptreact = { 'prettierd', 'eslint' },
        javascriptreact = { 'prettierd', 'eslint' },
        go = { 'goimports', 'gofumpt' },
        terraform = { 'terragrunt_hclfmt' },
        hcl = { 'terragrunt_hclfmt' },
        tf = { 'terragrunt_hclfmt' },
        sql = { 'sqlfmt' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
