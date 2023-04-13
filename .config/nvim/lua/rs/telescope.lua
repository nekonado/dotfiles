require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ['<Esc>'] = require('telescope.actions').close,
        ['<C-g>'] = require('telescope.actions').close,
      },
      i = {
        ['<C-g>'] = require('telescope.actions').close,
      },
    },
  },
})
