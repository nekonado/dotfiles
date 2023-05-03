local opt = vim.opt

vim.g.mapleader = ' '

opt.helplang = 'ja'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.wrap = false
opt.display = 'lastline'
opt.sidescroll = 5
opt.list = true
opt.listchars = 'precedes:<,extends:>'
opt.whichwrap = '<,>,[,],h,l,b,s'
opt.backspace = 'indent,eol,start'

opt.autoindent = true
opt.smartindent = true
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'

opt.hidden = true
opt.swapfile = false

opt.mouse = 'a'
opt.clipboard = 'unnamedplus'

opt.showmatch = true
opt.matchtime = 2

opt.termguicolors = true
opt.pumblend = 5

opt.pumheight = 15
opt.updatetime = 300
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoread = true
opt.cursorline = true
opt.laststatus = 2
