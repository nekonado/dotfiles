require('chowcho').setup {
  icon_enabled = true, -- required 'nvim-web-devicons' (default: false)
  text_color = '#FFFFFF',
  -- bg_color = '#555555',
  active_border_color = '#FF8700',
  border_style = 'rounded', -- 'default', 'rounded',
  use_exclude_default = false,
  exclude = function(buf, win)
    -- Exclude a window from the choice based on its buffer information.
    -- This option is applied iff `use_exclude_default = false`.
    -- Note that below is identical to the `use_exclude_default = true`.
    local fname = vim.fn.expand('#' .. buf .. ':t')
    return fname == ''
  end,
  zindex = 10000, -- sufficiently large value to show on top of the other windows
}
