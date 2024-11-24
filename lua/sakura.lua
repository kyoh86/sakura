local M = {}

---@class SakuraHighlightColors
---@field black string RGB(#rrggbb) color
---@field red string RGB(#rrggbb) color
---@field green string RGB(#rrggbb) color
---@field yellow string RGB(#rrggbb) color
---@field blue string RGB(#rrggbb) color
---@field magenta string RGB(#rrggbb) color
---@field cyan string RGB(#rrggbb) color
---@field white string RGB(#rrggbb) color
---@field lightblack string RGB(#rrggbb) color
---@field lightred string RGB(#rrggbb) color
---@field lightgreen string RGB(#rrggbb) color
---@field lightyellow string RGB(#rrggbb) color
---@field lightblue string RGB(#rrggbb) color
---@field lightmagenta string RGB(#rrggbb) color
---@field lightcyan string RGB(#rrggbb) color
---@field lightwhite string RGB(#rrggbb) color
---@field hardblack string RGB(#rrggbb) color
---@field grayscale1 string RGB(#rrggbb) color
---@field grayscale2 string RGB(#rrggbb) color
---@field grayscale3 string RGB(#rrggbb) color
---@field grayscale4 string RGB(#rrggbb) color
---@field grayscale5 string RGB(#rrggbb) color

---@type SakuraHighlightColors
M.colors = {
  black = "#3f2b36",
  red = "#a22041",
  green = "#007b43",
  yellow = "#f8b500",
  blue = "#007bbb",
  magenta = "#aa5e81",
  cyan = "#468198",
  white = "#b29f9a",
  lightblack = "#786d6e",
  lightred = "#e83929",
  lightgreen = "#68be8d",
  lightyellow = "#ffd900",
  lightblue = "#00a1e9",
  lightmagenta = "#d8aabf",
  lightcyan = "#86b2c5",
  lightwhite = "#f8fbfe",
  hardblack = "#281a1c",
  grayscale1 = "#5b4d4e",
  grayscale2 = "#786d6e",
  grayscale3 = "#8b7d7e",
  grayscale4 = "#b29f9a",
  grayscale5 = "#d8c9bf",
}

---@class SakuraHighlightColor
---@field gui string    Color for guibg/guifg
---@field cterm integer  Color index for ctermfg/ctermbg

---@class SakuraHighlightPalette
---@field black SakuraHighlightColor
---@field red SakuraHighlightColor
---@field green SakuraHighlightColor
---@field yellow SakuraHighlightColor
---@field blue SakuraHighlightColor
---@field magenta SakuraHighlightColor
---@field cyan SakuraHighlightColor
---@field white SakuraHighlightColor
---@field lightblack SakuraHighlightColor
---@field lightred SakuraHighlightColor
---@field lightgreen SakuraHighlightColor
---@field lightyellow SakuraHighlightColor
---@field lightblue SakuraHighlightColor
---@field lightmagenta SakuraHighlightColor
---@field lightcyan SakuraHighlightColor
---@field lightwhite SakuraHighlightColor
---@field hardblack SakuraHighlightColor
---@field grayscale1 SakuraHighlightColor
---@field grayscale2 SakuraHighlightColor
---@field grayscale3 SakuraHighlightColor
---@field grayscale4 SakuraHighlightColor
---@field grayscale5 SakuraHighlightColor

---@type SakuraHighlightPalette
M.palette = {
  black = { gui = "#3f2b36", cterm = 0 },
  red = { gui = "#a22041", cterm = 1 },
  green = { gui = "#007b43", cterm = 2 },
  yellow = { gui = "#f8b500", cterm = 3 },
  blue = { gui = "#007bbb", cterm = 4 },
  magenta = { gui = "#aa5e81", cterm = 5 },
  cyan = { gui = "#468198", cterm = 6 },
  white = { gui = "#b29f9a", cterm = 7 },
  lightblack = { gui = "#786d6e", cterm = 8 },
  lightred = { gui = "#e83929", cterm = 9 },
  lightgreen = { gui = "#68be8d", cterm = 10 },
  lightyellow = { gui = "#ffd900", cterm = 11 },
  lightblue = { gui = "#00a1e9", cterm = 12 },
  lightmagenta = { gui = "#d8aabf", cterm = 13 },
  lightcyan = { gui = "#86b2c5", cterm = 14 },
  lightwhite = { gui = "#f8fbfe", cterm = 15 },
  hardblack = { gui = "#281a1c", cterm = 232 },
  grayscale1 = { gui = "#5b4d4e", cterm = 235 },
  grayscale2 = { gui = "#786d6e", cterm = 236 },
  grayscale3 = { gui = "#8b7d7e", cterm = 237 },
  grayscale4 = { gui = "#b29f9a", cterm = 238 },
  grayscale5 = { gui = "#d8c9bf", cterm = 239 },
}

---@alias SakuraHighlightEmpha "bold"|"underline"|"undercurl"|"underdouble"|"underdotted"|"underdashed"|"strikethrough"|"reverse"|"inverse"|"italic"|"standout"|"altfont"|"nocombine"|"NONE"

---@class SakuraHighlightParam
---@field fg     SakuraHighlightColor    Foreground color
---@field bg     SakuraHighlightColor    Background color
---@field empha  SakuraHighlightEmpha[]  Special highlight for emphasis text.
---@field guisp  SakuraHighlightColor    Color for various underlines
---@field blend  integer                 Blend level for a highlight group

---Set a highlight group.
---Which color for "fg" or "bg", you can get it from "palette".
---e.g.: require"sakura.colors".highlight("Pmenu", { fg = require"sakura.colors".palette.red })
---@param group string    Target highlight group name.
---@param params SakuraHighlightParam
function M.highlight(group, params)
  vim.validate({
    group = { group, "string" },
    params = { params, "table" },
  })
  local histr = { "highlight", group }

  local fg = vim.tbl_get(params, "fg", "foreground") or {}
  if #fg >= 2 then
    vim.list_extend(histr, { "guifg=" .. fg.gui, "ctermfg=" .. fg.cterm })
  end

  local bg = vim.tbl_get(params, "bg", "background") or {}
  if #bg >= 2 then
    vim.list_extend(histr, { "guibg=" .. bg.gui, "ctermbg=" .. bg.cterm })
  end

  local empha = vim.tbl_filter(function(v)
    return v ~= ""
  end, params.empha or {})

  if #empha > 0 then
    local em = table.concat(empha, ",")
    vim.list_extend(histr, { "gui=" .. em, "cterm=" .. em })
  end

  local guisp = params.guisp or {}
  if #guisp > 0 then
    table.insert(histr, "guisp=" .. guisp.gui)
  end

  vim.cmd.execute(table.concat(histr, " "))
end

return M
