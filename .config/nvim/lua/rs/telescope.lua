local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.load_extension 'packer'
telescope.load_extension 'noice'

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ['<Esc>'] = require('telescope.actions').close,
        ['<C-g>'] = require('telescope.actions').close,
      },
      i = {
        ['<C-g>'] = require('telescope.actions').close,
      },
    }
  }
})
