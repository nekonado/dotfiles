if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  require 'bases'
  require 'plugins'
  require 'keymaps'
  require 'autocmds'
  require 'options'
  require 'rs'
end
