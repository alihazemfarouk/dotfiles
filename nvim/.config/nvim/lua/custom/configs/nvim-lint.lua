require("lint").linters_by_ft = {
  markdown = { "vale" },
  sh = { "shellcheck" },
  python = { "ruff" },
  lua = { "luacheck" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  sql = { "sqlfluff" },
  terraform = { "tflint" },
  tf = { "tflint" },
  hcl = { "tflint" },
}
