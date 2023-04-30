if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  require 'options'
  require 'keymaps'
  require 'autocmds'
  require 'plugins'
  require 'rs'
end
