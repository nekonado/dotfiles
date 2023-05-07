local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.load_extension 'packer'
telescope.load_extension 'noice'
-- telescope.load_extension 'frecency'
telescope.load_extension 'live_grep_args'

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ['<Esc>'] = require('telescope.actions').close,
        ['<C-e>'] = require('telescope.actions').close,
      },
      i = {
        ['<C-e>'] = require('telescope.actions').close
        ,
      },
    }
  }
})
