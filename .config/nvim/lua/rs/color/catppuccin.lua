local status, _  = pcall(require, "catppuccin")
if (not status) then return end

vim.cmd [[colorscheme catppuccin-mocha]]
