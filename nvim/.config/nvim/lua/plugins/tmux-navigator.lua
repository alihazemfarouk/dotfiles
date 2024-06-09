return {
  {
    'christoomey/vim-tmux-navigator',
    event = 'VeryLazy',
    keys = {
      { '<C-h>', '<cmd> TmuxNavigateLeft <CR>' },
      { '<C-l>', '<cmd> TmuxNavigateRight <CR>' },
      { '<C-j>', '<cmd> TmuxNavigateDown <CR>' },
      { '<C-k>', '<cmd> TmuxNavigateUp <CR>' },
    },
  },
}
