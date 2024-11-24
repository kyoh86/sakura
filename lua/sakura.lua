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
---@field gradation1 string RGB(#rrggbb) color
---@field gradation2 string RGB(#rrggbb) color
---@field gradation3 string RGB(#rrggbb) color
---@field gradation4 string RGB(#rrggbb) color
---@field gradation5 string RGB(#rrggbb) color

---@type SakuraHighlightColors
M.colors = {
  black = "#3a2731",
  red = "#a03a3a",
  green = "#3c7f01",
  yellow = "#c07b02",
  blue = "#196a9e",
  magenta = "#a45779",
  cyan = "#53838a",
  white = "#e7c9d3",
  lightblack = "#5d3e4c",
  lightred = "#cc4d4d",
  lightgreen = "#89b97c",
  lightyellow = "#c88d00",
  lightblue = "#51b0ff",
  lightmagenta = "#d29eb5",
  lightcyan = "#7da2b3",
  lightwhite = "#dee9ed",
  hardblack = "#3d272c",
  gradation1 = "#5d3e4c",
  gradation2 = "#7a5867",
  gradation3 = "#977584",
  gradation4 = "#b995a4",
  gradation5 = "#e7c9d3",
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
---@field gradation1 SakuraHighlightColor
---@field gradation2 SakuraHighlightColor
---@field gradation3 SakuraHighlightColor
---@field gradation4 SakuraHighlightColor
---@field gradation5 SakuraHighlightColor

---@type SakuraHighlightPalette
M.palette = {
  black = { gui = "#3a2731", cterm = 0 },
  red = { gui = "#a03a3a", cterm = 1 },
  green = { gui = "#3c7f01", cterm = 2 },
  yellow = { gui = "#c07b02", cterm = 3 },
  blue = { gui = "#196a9e", cterm = 4 },
  magenta = { gui = "#a45779", cterm = 5 },
  cyan = { gui = "#53838a", cterm = 6 },
  white = { gui = "#e7c9d3", cterm = 7 },
  lightblack = { gui = "#5d3e4c", cterm = 8 },
  lightred = { gui = "#cc4d4d", cterm = 9 },
  lightgreen = { gui = "#89b97c", cterm = 10 },
  lightyellow = { gui = "#c88d00", cterm = 11 },
  lightblue = { gui = "#51b0ff", cterm = 12 },
  lightmagenta = { gui = "#d29eb5", cterm = 13 },
  lightcyan = { gui = "#7da2b3", cterm = 14 },
  lightwhite = { gui = "#dee9ed", cterm = 15 },
  hardblack = { gui = "#3d272c", cterm = 232 },
  gradation1 = { gui = "#5d3e4c", cterm = 235 },
  gradation2 = { gui = "#7a5867", cterm = 236 },
  gradation3 = { gui = "#977584", cterm = 237 },
  gradation4 = { gui = "#b995a4", cterm = 238 },
  gradation5 = { gui = "#e7c9d3", cterm = 239 },
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
