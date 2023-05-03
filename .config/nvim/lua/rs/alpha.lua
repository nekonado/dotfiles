local alpha = require('alpha')
local theme = require('alpha.themes.dashboard')


-- Set header
theme.section.header.val = {
  "                                                     ",
  "                                      🌕             ",
  "                                🚀                   ",
  "  ███╗   ██╗███████╗ ✨████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ██✨╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ✨██║ ",
  "  ██╔██╗ ██║█████╗  ██║　 ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ✨╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}
-- theme.section.header.val = {
--   "                                                     ",
--   "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
--   "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
--   "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
--   "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
--   "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
--   "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
--   "                                                     ",
-- }

theme.section.header.opts.hl = "AlphaHeader"
theme.section.buttons.opts.hl = "AlphaButtons"

theme.section.footer.opts.hl = "Constant"

-- -- Set menu
-- theme.section.buttons.val = {
--   theme.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
--   theme.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
--   theme.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
--   theme.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
--   theme.button("q", "  > Quit NVIM", ":qa<CR>"),
-- }


alpha.setup(theme.opts)
