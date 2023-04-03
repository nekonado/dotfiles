vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  pattern = { 'plugins.lua' },
  command = 'PackerCompile',
})

-- Restore cursor position when file is opened
vim.api.nvim_create_autocmd({ 'BufReadPost' }, {
  pattern = { '*' },
  callback = function()
    vim.api.nvim_exec('silent! normal! g`"zv', false)
  end,
})

-- LSP handlers
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

-- Reference highlight
vim.cmd [[
set updatetime=500
highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
" augroup lsp_document_highlight
"   autocmd!
"   autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
"   autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
" augroup END
]]

-- Colorscheme
vim.cmd 'colorscheme tokyonight-night'

vim.g.mapleader = ' '
require 'plugins'
require 'keymaps'
require 'rs/index'

if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  vim.opt.helplang = 'ja', 'en'
  vim.o.ignorecase = true
  vim.o.smartcase = true
  vim.o.splitright = true
  vim.o.termguicolors = true
  vim.o.hidden = true
  vim.o.updatetime = 300
  vim.bo.expandtab = true
  vim.o.termguicolors = true
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
