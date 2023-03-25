require('keymaps')

if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  vim.g.mapleader = ' '
  vim.o.ignorecase = true
  vim.o.smartcase = true
  vim.o.splitright = true
  vim.o.termguicolors = true
  vim.o.hidden = true
  vim.o.updatetime = 300
  vim.o.termguicolors = true
  vim.bo.expandtab = true
  vim.bo.autoindent = true
  vim.bo.smartindent = true
  vim.bo.tabstop = 2
  vim.bo.shiftwidth = 2
  vim.bo.autoread = true
  vim.wo.number = true
  vim.wo.relativenumber = true
  vim.wo.signcolumn = 'yes'
  vim.wo.cursorline = true
  vim.cmd 'set clipboard+=unnamedplus'
end
