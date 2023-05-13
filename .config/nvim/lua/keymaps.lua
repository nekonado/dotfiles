local keymap = vim.keymap.set
local op_nr = { noremap = true, silent = true }
local op_r = { remap = true, silent = true }

keymap('i', 'jj', '<ESC>', op_nr)
keymap('t', 'jj', '<ESC>', op_r)

keymap('n', ';', ':', op_nr)

keymap('n', 'H', '0', op_nr)
keymap('n', 'L', '$', op_nr)

keymap('n', 'Y', 'y$', op_nr)
keymap('n', 'P', ']P', op_nr)
keymap('n', 'U', '<C-r>', op_nr)
keymap('n', '+', '<C-a>', op_nr)
keymap('n', '-', '<C-x>', op_nr)

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', op_nr)
keymap('n', '<C-j>', '<C-w>j', op_nr)
keymap('n', '<C-k>', '<C-w>k', op_nr)
keymap('n', '<C-l>', '<C-w>l', op_nr)

-- Emacs style text edit
keymap('i', '<C-a>', '<C-o>0', op_nr)
keymap('i', '<C-e>', '<C-o>$', op_nr)
keymap('i', '<C-h>', '<BS>', op_nr)
keymap('i', '<C-d>', '<Del>', op_nr)
keymap('i', '<C-k>', '<C-o>D', op_nr)

-- Better switch visual mode
keymap('n', 'v', '<C-v>', op_nr)
keymap('n', '<C-v>', 'v', op_nr)

-- terminal
keymap('t', '<Esc>', '<C-\\><C-n>', op_nr)
keymap('t', '<C-c>', '<C-\\><C-n>', op_nr)

-- leader key
keymap('n', '<leader>a', 'ggVG', op_nr)
keymap('n', '<leader>o', 'o<ESC>', op_nr)
keymap('n', '<leader>O', 'O<ESC>', op_nr)
keymap('n', '<leader><Esc>', '<cmd>nohlsearch<CR>', op_nr)
keymap('n', '<leader>w', '<cmd>Chowcho<CR>', op_nr)
keymap('n', '<leader>e', '<cmd>Neotree<CR>', op_nr)

-- HopNvim
keymap('n', 'hw', '<cmd>HopWord<CR>', op_nr)
keymap('n', 'hp', '<cmd>HopPattern<CR>', op_nr)
keymap('n', 'ht', '<cmd>HopChar2<CR>', op_nr)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {})
keymap('n', '<leader>fa', '<cmd>Telescope find_files hidden=true<CR>', {})
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {})
keymap('n', '<leader>fs', '<cmd>Telescope git_status<CR>', {})
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {})
keymap('n', '<leader>fr', '<cmd>Telescope registers<CR>', {})
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', {})
keymap("n", "<leader>fl", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", {})

-- ToggleTerm
keymap('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', op_nr)
keymap('n', '<leader>2th', '<cmd>2 ToggleTerm direction=horizontal<CR>', op_nr)
keymap('n', '<leader>3th', '<cmd>3 ToggleTerm direction=horizontal<CR>', op_nr)
keymap('n', '<leader>tt', '<cmd>ToggleTermToggleAll<CR>', op_nr)
keymap('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', op_nr)

-- Trouble
keymap('n', '<leader>xx', '<cmd>TroubleToggle<CR>', op_nr)

-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection

keymap('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
keymap('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
keymap('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
keymap('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })

-- lua program execution
keymap('n', '<F5>', '<cmd>luafile %<CR>', op_nr)
