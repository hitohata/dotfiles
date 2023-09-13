local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme_toggle = { "onedark", "one_light", "ocentic-next" },
  theme = 'yoru',
  hl_override = highlights.override,
  hi_add = highlights.add
}

M.plugins = 'custom.plugins'
return M
