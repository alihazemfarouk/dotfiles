-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    close_if_last_window = true,
    source_selector = {
      winbar = true,
      sources = {
        { source = 'filesystem', display_name = ' 󰉓 File ' },
        { source = 'git_status', display_name = ' 󰊢 Git ' },
        { source = 'buffers', display_name = ' 󰓩 Buf ' },
      },
      content_layout = 'center',
    },
    filesystem = {
      use_libuv_file_watcher = true,
      follow_current_file = {
        enabled = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_by_name = {
          'node_modules',
          '.git',
        },
        never_show = {
          '.DS_Store',
          '__pycache__',
        },
      },
    },
  },
}
