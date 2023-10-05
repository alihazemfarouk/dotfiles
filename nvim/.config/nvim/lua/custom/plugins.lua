local plugins = {
  {
    "NvChad/nvterm",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "windwp/nvim-ts-autotag",
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufRead",
    config = function()
      require("treesitter-context").setup {}
    end,
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
    "RRethy/vim-illuminate",
    event = "BufRead",
    config = function()
      require("illuminate").configure()
    end,
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
  {
    "junegunn/gv.vim",
    event = "VeryLazy",
    dependencies = { "tpope/vim-fugitive" },
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
      require "custom.configs.octo"
    end,
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
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    event = "BufReadPre",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "custom.configs.barbecue"
    end,
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
    event = "BufReadPre",
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
    "mg979/vim-visual-multi",
    event = "BufRead",
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
    "nvim-zh/better-escape.vim",
    event = "VeryLazy",
  },
  {
    "ThePrimeagen/refactoring.nvim",
    event = "BufRead",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
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
    lazy = false,
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
        build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && rm -rf out && mv dist out",
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
}

return plugins
