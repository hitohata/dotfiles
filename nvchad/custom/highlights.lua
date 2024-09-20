local M = {}

M.override =  {
  CursorLine = {
    bg = "black2",
  },
  -- hoge
  Comment = {
    fg = "grey",
    italic = true,
  },
}

M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
  Visual = {
    fg = "white",
    bg = "grey"
  }
}

return M
