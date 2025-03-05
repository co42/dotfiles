local M = {}

-- See :h nvui
M.base46 = {
  theme = 'tokyonight',
  transparency = false,
}

M.ui = {
  cmp = {
    icons_left = false, -- only for non-atom styles!
    style = 'flat_dark', -- default/flat_light/flat_dark/atom/atom_colored
    abbr_maxwidth = 30,
    format_colors = {
      tailwind = false, -- will work for css lsp too
      icon = '󱓻',
    },
  },
}

return M
