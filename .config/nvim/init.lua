if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  vim.g.mapleader = ' '
  vim.wo.number = true
  vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
end
