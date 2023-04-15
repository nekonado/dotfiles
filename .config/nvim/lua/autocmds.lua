-- local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '*',
  command = ':%s/\\s\\+$//e',
})

-- Execute PackerCompile when plugins.lua update
autocmd({ 'BufWritePost' }, {
  pattern = { 'plugins.lua' },
  command = 'PackerCompile',
})

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '*',
  command = 'set fo-=c fo-=r fo-=o',
})

-- Restore cursor location when file is opened
autocmd({ 'BufReadPost' }, {
  pattern = { '*' },
  callback = function()
    vim.api.nvim_exec('silent! normal! g`"zv', false)
  end,
})

autocmd('TermOpen', {
  pattern = '*',
  command = ':startinsert'
})

autocmd('TermOpen', {
  pattern = '*',
  command = 'setlocal norelativenumber'
})

autocmd('TermOpen', {
  pattern = '*',
  command = 'setlocal nonumber'
})
