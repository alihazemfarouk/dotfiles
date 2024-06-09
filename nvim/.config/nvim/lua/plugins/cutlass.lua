return {
  {
    'svermeulen/vim-cutlass',
    event = 'BufRead',
    keys = {
      { 'm', 'd', mode = { 'v', 'n' } },
      { 'mm', 'dd', mode = { 'n' } },
      { 'M', 'D', mode = { 'n' } },
    },
  },
}
