local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap({ 'n', 'x' }, '<Space>', '<NOP>')

keymap('i', 'jj', '<ESC>', opts)

keymap('n', 'H', '0', opts)
keymap('n', 'L', '$', opts)

keymap('n', 'Y', 'y$', opts)
keymap('n', 'P', ']P', opts)
keymap('n', '+', '<C-a>', opts)
keymap('n', '-', '<C-x>', opts)

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', ';', ':', opts)
keymap("i", ",", ",<Space>", opts)

-- terminal
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
keymap('t', '<C-c>', '<C-\\><C-n>', opts)

-- leader key
keymap('n', '<leader>a', 'ggVG', opts)
keymap('n', '<leader>h', '^', opts)
keymap('n', '<leader>l', '$', opts)

-- HopNvim
keymap('n', 'hw', '<cmd>HopWord<CR>', opts)
keymap('n', 'hp', '<cmd>HopPattern<CR>', opts)
keymap('n', 'ht', '<cmd>HopChar2<CR>', opts)

keymap('n', '<leader>w', '<cmd>Chowcho<CR>', opts)
keymap('n', '<leader>e', '<cmd>Neotree<CR>', opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {})
keymap('n', '<leader>fa', '<cmd>Telescope find_files hidden=true<CR>', {})
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {})
keymap('n', '<leader>fs', '<cmd>Telescope git_status<CR>', {})
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {})
keymap('n', '<leader>fr', '<cmd>Telescope registers<CR>', {})
keymap('n', '<leader>fh', '<cmd>Telescope help_tags', {})

-- ToggleTerm
keymap('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', opts)
keymap('n', '<leader>2th', '<cmd>2 ToggleTerm direction=horizontal<CR>', opts)
keymap('n', '<leader>3th', '<cmd>3 ToggleTerm direction=horizontal<CR>', opts)
keymap('n', '<leader>tt', '<cmd>ToggleTermToggleAll<CR>', opts)
keymap('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', opts)

-- Trouble
keymap('n', '<leader>xx', '<cmd>TroubleToggle<CR>', opts)

-- Build-in LSP Function
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap('n', 'gf', '<cmd>lua vim.lsp.buf.format { async = true }<CR>')
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
end, { remap = true })
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })
