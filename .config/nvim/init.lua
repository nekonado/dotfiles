if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim

  vim.g.mapleader = ' '

  require 'bases'
  require 'plugins'
  require 'keymaps'
  require 'autocmds'
  require 'options'
  require 'rs'

  -- LSP handlers
  --vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  --  vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
  -- 

  -- Reference highlight
  -- vim.cmd [[
  --   set updatetime=500
  --   highlight LspReferenceText  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
  --   highlight LspReferenceRead  cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
  --   highlight LspReferenceWrite cterm=underline ctermfg=1 ctermbg=8 gui=underline guifg=#A00000 guibg=#104040
  --   augroup lsp_document_highlight
  --     autocmd!
  --     autocmd CursorHold,CursorHoldI * lua vim.lsp.buf.document_highlight()
  --     autocmd CursorMoved,CursorMovedI * lua vim.lsp.buf.clear_references()
  --   augroup END
  -- ]]
end
