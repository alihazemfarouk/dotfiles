local original_on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local on_attach = function(client, bufnr)
  original_on_attach(client, bufnr)

  vim.diagnostic.config {
    virtual_text = false,
  }
end

local lspconfig = require "lspconfig"

local servers = {
  "terraformls",
  "tflint",
  "dockerls",
  "docker_compose_language_service",
  "html",
  "cssls",
  "jsonls",
  "gopls",
  "prismals",
  "emmet_language_server",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

require("typescript-tools").setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.semanticTokensProvider = nil
    on_attach(client, bufnr)
  end,
  handlers = {
    ["textDocument/publishDiagnostics"] = require("typescript-tools.api").filter_diagnostics {
      7044,
    },
  },
  settings = {
    expose_as_code_action = "all",
    tsserver_plugins = {
      "@styled/typescript-styled-plugin",
    },
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  settings = {
    python = {
      disableOrganizeImports = false,
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "basic",
        diagnosticSeverityOverrides = {
          reportPrivateImportUsage = "none",
          reportOptionalMemberAccess = "none",
        },
      },
    },
  },
}
