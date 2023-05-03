local barbar = require('barbar')

barbar.setup({
  -- Enable/disable animations
  animation = true,
  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,
  -- Set the filetypes which barbar will offset itself for
  sidebar_filetypes = {
    -- -- Use the default values: {event = 'BufWinLeave', text = nil}
    -- NvimTree = true,
    -- -- Or, specify the text used for the offset:
    -- undotree = { text = 'undotree' },
    -- -- Or, specify the event which the sidebar executes when leaving:
    ['neo-tree'] = { event = 'BufWipeout' },
    -- -- Or, specify both
    -- Outline = { event = 'BufWinLeave', text = 'symbols-outline' },
  }
})
