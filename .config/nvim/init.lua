vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

-- Colorscheme
vim.cmd 'colorscheme tokyonight'

vim.g.mapleader = ' '
require 'plugins'
require 'keymaps'
require 'p-lualine'

if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
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
