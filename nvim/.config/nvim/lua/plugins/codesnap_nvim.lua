return {
  'mistricky/codesnap.nvim',
  build = 'make build_generator',
  keys = {
    { '<leader>cs', '<cmd>CodeSnapSave<cr>', mode = 'x', desc = 'Save selected code snapshot in ~/Desktop' },
  },
  opts = {
    save_path = '~/Desktop',
    has_breadcrumbs = true,
    bg_theme = 'peach',
    has_line_number = true,
    watermark = '',
  },
}
