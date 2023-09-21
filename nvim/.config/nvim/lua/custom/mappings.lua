local M = {}

M.general = {
  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

-- plugins specific mappings
M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" }, -- replaced by <C-p>
    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    }, -- replaced by Telescope
    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    }, -- replaced by Telescope
  },
}
M.nvimtree = {
  n = {
    ["<C-p>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}
M.harpoon = {
  n = {
    ["<leader>fp"] = { "<cmd> lua require('harpoon.ui').toggle_quick_menu() <CR>", "Telescope Harpoon marks" },
    ["<S-h>a"] = { "<cmd> lua require('harpoon.mark').add_file() <CR>", "Add Harpoon mark" },
    ["<leader>1"] = { "<cmd> lua require('harpoon.ui').nav_file(1) <CR>", "Nav to Harpoon file 1" },
    ["<leader>2"] = { "<cmd> lua require('harpoon.ui').nav_file(2) <CR>", "Nav to Harpoon file 2" },
    ["<leader>3"] = { "<cmd> lua require('harpoon.ui').nav_file(3) <CR>", "Nav to Harpoon file 3" },
    ["<leader>4"] = { "<cmd> lua require('harpoon.ui').nav_file(4) <CR>", "Nav to Harpoon file 4" },
  },
}
M.lazygit = {
  n = {
    ["<leader>lg"] = { "<cmd> LazyGit <CR>", "Starts LazyGit" },
  },
}
M.vimfugitive = {
  n = {
    ["<leader>gd"] = { "<cmd> Gvdiffsplit! <CR>", "Shows git diff in vertical split mode" },
    ["<leader>gdh"] = { "<cmd> diffget //2 <CR>", "Choose diff on the left" },
    ["<leader>gdl"] = { "<cmd> diffget //3 <CR>", "Choose diff on the right" },
    ["<leader>gB"] = { "<cmd> GBrowse <CR>", "Browse current file on git hosting provider" },
  },
  x = {
    ["<leader>gB"] = { ":GBrowse <CR>", "Browse current file on git hosting provider" },
  },
}
M.telescope = {
  n = {
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Git files" },
    ["<leader>gt"] = { "<cmd> Telescope lsp_type_definitions <CR>", "LSP Type Definitions" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP References" },
    ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "LSP Implementations" },
    ["<leader>ic"] = { "<cmd> Telescope lsp_incoming_calls <CR>", "LSP Incoming Calls" },
    ["<leader>oc"] = { "<cmd> Telescope lsp_outgoing_calls <CR>", "LSP Outgoing Calls" },
    ["<leader>sm"] = { "<cmd> Telescope lsp_document_symbols <CR>", "LSP Document Symbols" },
    ["<leader>ws"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "LSP Workspace Symbols" },
    ["<leader>di"] = { "<cmd> Telescope diagnostics <CR>", "LSP Diagnostics" },
  },
}
M.tmux = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
  },
}
M.sneak = {
  n = {
    ["f"] = { "<Plug>Sneak_s", "Sneak s" },
    ["F"] = { "<Plug>Sneak_S", "Sneak S" },
  },
}
M.theprimeagen = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Go down and center screen" },
    ["<C-u>"] = { "<C-u>zz", "Go up and center screen" },
    ["x"] = { '"_x', "Delete without copying to clipboad" },
    ["X"] = { '"_X', "Delete without copying to clipboad" },
    ["<leader>dd"] = { '"_dd', "Delete without copying to clipboad" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace word under cursor" },
  },
  x = {
    ["<leader>p"] = { '"_dP', "Paste over" },
  },
  v = {
    ["<leader>dd"] = { '"_d', "Delete over" },
  },
}
M.undotree = {
  n = {
    ["<leader>ut"] = { "<cmd> UndotreeToggle <CR>", "Toggle UndoTree" },
  },
}
M.multivisual = {
  n = {
    ["<C-s>a"] = { "<Plug>(VM-Select-All)", "Multi visual select all" },
  },
  x = {
    ["<C-s>a"] = { "<Plug>(VM-Visual-All)", "Multi visual visual all" },
  },
}
M.ctrlsf = {
  n = {
    ["<leader>sf"] = { "<Plug>CtrlSFPrompt", "CtrlSF" },
  },
}
M.gv = {
  n = {
    ["<leader>gv"] = { "<cmd> GV <CR>", "Browse commits in a buffer" },
  },
}
M.vimtest = {
  n = {
    ["<leader>tt"] = { ":TestNearest<CR>", "Test nearest" },
    ["<leader>tf"] = { ":TestFile<CR>", "Test file" },
    ["<leader>ta"] = { ":TestSuite<CR>", "Test all" },
    ["<leader>tl"] = { ":TestLast<CR>", "Test last" },
    ["<leader>tv"] = { ":TestVisit<CR>", "Test visit" },
    ["<leader>td"] = { ":TogglePytestDebugging<CR>", "Enable pytest debugging" },
  },
}

return M
