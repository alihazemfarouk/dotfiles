vim.lsp.config('pyright', {
  disableOrganizeImports = false,
  analysis = {
    autoSearchPaths = true,
    diagnosticMode = 'openFilesOnly',
    useLibraryCodeForTypes = true,
    typeCheckingMode = 'basic',
    diagnosticSeverityOverrides = {
      reportPrivateImportUsage = 'none',
      reportOptionalMemberAccess = 'none',
    },
  },
})

vim.lsp.enable 'pyright'
