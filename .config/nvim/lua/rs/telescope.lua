local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.load_extension 'packer'
-- telescope.load_extension 'media_files'

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
    },
  },
  -- extensions = {
  --   media_files = {
  --     -- filetypes whitelist
  --     -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
  --     filetypes = { "png", "webp", "jpg", "jpeg" },
  --     -- find command (defaults to `fd`)
  --     find_cmd = "rg"
  --   }
  -- },
})
