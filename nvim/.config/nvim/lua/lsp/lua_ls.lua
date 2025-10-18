vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' }, -- Command to start the Lua Language Server
  filetypes = { 'lua' }, -- File types it should attach to
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
})

vim.lsp.enable 'lua_ls'
