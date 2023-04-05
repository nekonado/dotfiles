local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('i', 'jj', '<ESC>', opts)
-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', ';', ':', opts)
keymap("i", ",", ",<Space>", opts)

keymap("n", "dw", 'vb"_d', opts)

-- HopNvim
keymap('n', 'hw', '<cmd>HopWord<CR>', opts)
keymap('n', 'hp', '<cmd>HopPattern<CR>', opts)
keymap('n', 'ht', '<cmd>HopChar2<CR>', opts)
-- terminal
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
keymap('t', '<C-c>', '<C-\\><C-n>', opts)

-- leader key
keymap('n', '<leader>a', 'ggVG', opts)
keymap('n', '<leader>e', '<cmd>Neotree<CR>', opts)
keymap('n', '<leader>h', '^', opts)
keymap('n', '<leader>l', '$', opts)
keymap('n', '<leader>w', '<cmd>Chowcho<CR>', opts)

-- Build-in LSP Function
keymap('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')

-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})
