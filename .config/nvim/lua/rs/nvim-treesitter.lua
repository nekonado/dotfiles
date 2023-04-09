require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'html', 'pug', 'css', 'scss',
    'typescript', 'javascript', 'tsx', 'jsdoc',
    'json', 'markdown',
    'lua', 'vim', 'vimdoc', 'query',
  },
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
