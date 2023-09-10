local original_on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local on_attach = function(client, bufnr)
  original_on_attach(client, bufnr)

  if client.server_capabilities["documentSymbolProvider"] then
    require("nvim-navic").attach(client, bufnr)
  end
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
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

require("typescript-tools").setup {
  on_attach = on_attach,
  handlers = {
    ["textDocument/publishDiagnostics"] = require("typescript-tools.api").filter_diagnostics {
      7044,
    },
  },
  tsserver_plugins = {
    "@styled/typescript-styled-plugin",
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
        },
      },
    },
  },
}

lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
}
