local M = {}

M.general = {
  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP Code Actions",
    },
  },
  x = {
    ["m"] = { "d", "Move, i.e. delete and copy to clipboard" },
  },
  n = {
    ["m"] = { "d", "Move, i.e. delete and copy to clipboard" },
    ["mm"] = { "dd", "Move line, i.e. delete and copy to clipboard" },
    ["M"] = { "D", "Move remainder of line, i.e. delete and copy to clipboard" },
  },
}

-- plugins specific mappings
M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" }, -- replaced by <C-p>
    ["<leader>ca"] = { "", "LSP Code Actions" },
    ["<leader>ra"] = { "", "LSP Rename" },
    ["K"] = { "", "LSP Hover" },
    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    }, -- replaced by Telescope
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
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" }, -- replaced by similar commands that follows symbolic links and shows hidden files
  },
}
M.nvimtree = {
  n = {
    ["<C-p>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
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
    ["<leader>grh"] = { "<cmd> diffget //2 <CR>", "Choose diff on the left" },
    ["<leader>grl"] = { "<cmd> diffget //3 <CR>", "Choose diff on the right" },
    ["<leader>gB"] = { "<cmd> GBrowse <CR>", "Browse current file on git hosting provider" },
  },
  x = {
    ["<leader>gB"] = { ":GBrowse <CR>", "Browse current file on git hosting provider" },
  },
}
M.telescope = {
  n = {
    ["<leader>ff"] = {
      "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '--follow','-g', '!.git' }})<cr>",
      "Find files",
    },
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "Git files" },
    ["<leader>gt"] = { "<cmd> Telescope lsp_type_definitions <CR>", "LSP Type Definitions" },
    ["gr"] = { "<cmd> Telescope lsp_references <CR>", "LSP References" },
    ["gi"] = { "<cmd> Telescope lsp_implementations <CR>", "LSP Implementations" },
    ["<leader>sm"] = { "<cmd> Telescope lsp_document_symbols <CR>", "LSP Document Symbols" },
    ["<leader>ws"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "LSP Workspace Symbols" },
    ["<leader>di"] = { "<cmd> Telescope diagnostics <CR>", "LSP Diagnostics" },
  },
}
M.lspsaga = {
  n = {
    ["<leader>ic"] = { "<cmd> Lspsaga incoming_calls <CR>", "LSP Incoming Calls" },
    ["<leader>oc"] = { "<cmd> Lspsaga outgoing_calls <CR>", "LSP Outgoing Calls" },
    ["<leader>ca"] = { "<cmd> Lspsaga code_action <CR>", "LSP Code Action" },
    ["<leader>rn"] = { "<cmd> Lspsaga rename <CR>", "LSP Rename" },
    ["<leader>pd"] = { "<cmd> Lspsaga peek_definition <CR>", "LSP Preview Definition" },
    ["<leader>ds"] = { "<cmd> Lspsaga show_line_diagnostics <CR>", "LSP Show Line Diagnostics" },
    ["<leader>cc"] = { "<cmd> Lspsaga show_cursor_diagnostics <CR>", "LSP Show Cursor Diagnostics" },
    ["<leader>ol"] = { "<cmd> Lspsaga outline <CR>", "LSP Symbols Ouline" },
    ["K"] = { "<cmd> Lspsaga hover_doc <CR>", "LSP Hover" },
    ["gd"] = { "<cmd> Lspsaga goto_definition <CR>", "LSP Goto Definition" },
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
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace word under cursor" },
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
M.ollama = {
  n = {
    ["<leader>oo"] = { ":<c-u>lua require('ollama').prompt()<cr>", "Ollama prompt" },
  },
  v = {
    ["<leader>oo"] = { ":<c-u>lua require('ollama').prompt()<cr>", "Ollama prompt" },
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
M.nvim_lspimport = {
  n = {
    ["<leader>ai"] = { "<cmd> lua require('lspimport').import() <CR>", "LSP import" },
  },
}
M.neogi = {
  n = {
    ["<leader>ng"] = { "<cmd> Neogit <CR>", "Neogit" },
  },
}
M.glow = {
  n = {
    ["<leader>mp"] = { "<cmd> Glow<CR>", "Markdown preview" },
  },
}
return M
