local wezterm = require 'wezterm'
local config = {}

local tokyonight_orange = "#ff9e64"

config = {
  keys = {
    -- ctrl+'-'で上下に分割
    { key = "-",  mods = "CTRL", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    -- ctrl+'|'で左右で分割
    { key = "\\", mods = "CTRL", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    -- ctrl+'['でpane間を移動
    { key = '[',  mods = 'CTRL', action = wezterm.action.PaneSelect }
  },
  colors = { split = tokyonight_orange },
  color_scheme = 'tokyonight_night',
  font_size = 14.0,
  text_background_opacity = 1.00,
  window_background_opacity = 1.00,
  window_padding = { top = 0, right = 0, bottom = 0, left = 0 },
  window_frame = { font_size = 10.0 },
  adjust_window_size_when_changing_font_size = false
}

return config
