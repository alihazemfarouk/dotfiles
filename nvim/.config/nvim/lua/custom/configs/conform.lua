require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "reorder_python_imports", "ruff_format" },
    javascript = { "prettierd", "eslint_d" },
    typescript = { "prettierd", "eslint_d" },
    typescriptreact = { "prettierd", "eslint_d" },
    javascriptreact = { "prettierd", "eslint_d" },
    go = { "goimports", "gofumpt" },
    terraform = { "terraform_fmt" },
    hcl = { "terraform_fmt" },
    tf = { "terraform_fmt" },
    sql = { "sqlfmt" },
  },
  notify_on_error = false,
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
