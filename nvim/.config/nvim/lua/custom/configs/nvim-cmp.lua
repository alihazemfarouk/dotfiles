local cmp = require "cmp"

local options = {
  completion = {
    completeopt = "menu,menuone,noinsert,noselect",
  },
  preselect = cmp.PreselectMode.None,
  mapping = {
    ["<CR>"] = cmp.mapping.confirm { select = false },
    ["<C-j>"] = cmp.mapping(function(fallback)
      cmp.mapping.abort()
      local copilot_keys = vim.fn["copilot#Accept"]()
      if copilot_keys ~= "" then
        vim.api.nvim_feedkeys(copilot_keys, "i", true)
      else
        fallback()
      end
    end),
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "vim-dadbod-completion" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
  },
}

return options
