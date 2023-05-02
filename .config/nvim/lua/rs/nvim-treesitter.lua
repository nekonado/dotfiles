local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = true,
    -- disable = {},
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "html",
    "css",
    "lua",
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "tsx" },
    extended_mode = false,
    max_file_lines = 1000,
  }
}
