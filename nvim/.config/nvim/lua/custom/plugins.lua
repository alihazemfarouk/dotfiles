local plugins = {
  {
    "NvChad/nvterm",
    enabled = false,
  },
  {
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      local builtin_config = require("plugins.configs.others").gitsigns
      local custom_config = require "custom.configs.gitsigns"
      local merged_config = vim.tbl_deep_extend("force", builtin_config, custom_config)
      return merged_config
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "mfussenegger/nvim-lint",
        config = function()
          require "custom.configs.nvim-lint"
        end,
      },
      {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        config = function()
          require "custom.configs.conform"
        end,
      },
      {
        "windwp/nvim-ts-autotag",
      },
      {
        "nvimdev/lspsaga.nvim",
        config = function()
          require("lspsaga").setup {
            code_action = {
              extend_gitsigns = true,
            },
            lightbulb = {
              enable = false,
            },
          }
        end,
        dependencies = {
          "nvim-treesitter/nvim-treesitter",
          "nvim-tree/nvim-web-devicons",
        },
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "towolf/vim-helm",
    event = "BufReadPre",
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "stevanmilic/nvim-lspimport",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-tree.lua" },
    config = function()
      require("lsp-file-operations").setup {}
    end,
    event = "BufRead",
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    event = "VeryLazy",
    config = true,
  },
  {
    "junegunn/gv.vim",
    event = "VeryLazy",
    dependencies = { "tpope/vim-fugitive" },
  },
  {
    "tpope/vim-rhubarb",
    event = "VeryLazy",
    dependencies = { "tpope/vim-fugitive" },
  },
  {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
  },
  {
    "justinmk/vim-sneak",
    event = "VeryLazy",
    config = function()
      require "custom.configs.sneak"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.configs.nvim-cmp",
  },
  {
    "github/copilot.vim",
    event = "BufRead",
    config = function()
      require "custom.configs.copilot"
    end,
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  {
    "tpope/vim-surround",
    event = "BufRead",
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy",
  },
  {
    "TamaMcGlinn/quickfixdd",
    event = "BufRead",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {
      highlight = {
        pattern = [[.*<(KEYWORDS)\s*]],
      },
      search = {
        pattern = [[\b(KEYWORDS)\b]],
      },
    },
  },
  {
    "matze/vim-move",
    event = "BufRead",
  },
  {
    "dyng/ctrlsf.vim",
    event = "BufRead",
  },
  {
    "ThePrimeagen/harpoon",
    event = "BufRead",
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
    config = true,
    keys = {
      {
        "<leader>vs",
        "<cmd>:VenvSelect<cr>",
        "<leader>vc",
        "<cmd>:VenvSelectCached<cr>",
      },
    },
  },
  {
    "preservim/vimux",
    event = "VeryLazy",
  },
  {
    "vim-test/vim-test",
    event = "BufRead",
    config = function()
      require "custom.configs.vim-test"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "rcarriga/nvim-dap-ui" },
      { "theHamsta/nvim-dap-virtual-text" },
      { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
      {
        "microsoft/vscode-js-debug",
        build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && rm -rf out && mv dist out && git restore package-lock.json",
      },
      { "mfussenegger/nvim-dap-python" },
    },
    keys = require("custom.configs.nvim-dap").keys,
    opts = {
      setup = {
        osv = function(_, _)
          require "custom.configs.dap.init"
        end,
      },
    },
    config = require("custom.configs.nvim-dap").setup,
  },
  {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIToggle" },
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
  },
  {
    "svermeulen/vim-cutlass",
    event = "BufRead",
  },
  {
    "ellisonleao/dotenv.nvim",
    event = "VeryLazy",
    opts = {
      enable_on_load = false,
    },
  },
  {
    "roobert/f-string-toggle.nvim",
    event = "BufRead",
    config = function()
      require("f-string-toggle").setup {
        key_binding = "<leader>fs",
        key_binding_desc = "Toggle f-string",
      }
    end,
  },
}

return plugins
