local status, _ = pcall(require, "tokyonight")
require('tokyonight').setup({
  on_colors = function(colors)
    colors.border = "#27a1b9"
  end
})

vim.cmd [[colorscheme tokyonight-night]]
