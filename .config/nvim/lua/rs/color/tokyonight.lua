local status, n = pcall(require, "tokyonight")
if (not status) then return end

vim.cmd [[colorscheme tokyonight-night]]
