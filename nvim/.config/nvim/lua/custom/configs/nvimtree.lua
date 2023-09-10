local options = {
  hijack_cursor = true,
  filters = {
    custom = { ".DS_Store", "__pycache__", ".git$" },
  },
  git = {
    enable = true,
    ignore = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    width = {
      min = 30,
      max = 30,
    },
  },
}

return options
