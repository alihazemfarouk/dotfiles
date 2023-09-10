local opt = vim.opt
local wo = vim.wo

opt.scrolloff = 20

opt.relativenumber = true

opt.colorcolumn = "120"

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true

opt.foldmethod = "indent"
opt.foldlevel = 99

wo.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 200
