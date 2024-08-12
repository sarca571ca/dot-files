vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.termguicolors = true
-- opt.background = 'dark'
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.cursorline = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true
