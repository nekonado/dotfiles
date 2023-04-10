adjust_window_size_when_changing_font_size = false

local wezterm = require 'wezterm'
local config = {}

config = {
  keys = {
    -- ctrl+'-'で上下に分割
    { key = "-",  mods = "CTRL", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    -- ctrl+'|'で左右で分割
    { key = "\\", mods = "CTRL", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    -- ctrl+'w'でpaneを閉じる
    { key = "w",  mods = "CTRL", action = wezterm.action.CloseCurrentPane { confirm = false } }
  },
  color_scheme = 'tokyonight_night',
  font_size = 14.0,
  text_background_opacity = 0.70,
  window_background_opacity = 0.50,
  window_padding = { top = 0, bottom = 0 },
  window_frame = { font_size = 10.0 },
}

return config
