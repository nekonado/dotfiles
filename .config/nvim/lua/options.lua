local opt = vim.opt

vim.g.mapleader = ' '

opt.helplang = 'ja'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.wrap = false
opt.sidescroll = 5
opt.list = true
opt.listchars = 'precedes:<,extends:>'
-- vim.cmd [[set list listchars+=precedes:<,extends:>]]

opt.smartcase = true
opt.splitright = true
opt.termguicolors = true
opt.hidden = true
opt.updatetime = 300
opt.expandtab = true
opt.termguicolors = true
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoread = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.cursorline = true
opt.laststatus = 3
