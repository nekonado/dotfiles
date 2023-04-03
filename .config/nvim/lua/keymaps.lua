vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set('t', '<C-c>', '<C-\\><C-n>', { noremap = true, silent = true })

-- leader key
vim.keymap.set('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', '<Cmd>Chowcho<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', '<Cmd>HopWord<CR>', { noremap = true, silent = true })


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
