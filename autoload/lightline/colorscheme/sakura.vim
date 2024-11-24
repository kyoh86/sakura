" -----------------------------------------------------------------------------
" File: sakura.vim
" Description: Sakura colorscheme for Brightline (itchyny/lightline.vim)
" Author: kyoh86 <me@kyoh86.dev>
" -----------------------------------------------------------------------------

function! s:getSrcColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui") 
  let termColor = synIDattr(hlID(a:group), "fg", "cterm") 
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')
  let s:black          = g:sakura_palette.black
  let s:brightwhite     = g:sakura_palette.brightwhite
  let s:brightblack     = g:sakura_palette.brightblack
  let s:white          = g:sakura_palette.white
  let s:yellow         = g:sakura_palette.yellow
  let s:brightyellow    = g:sakura_palette.brightyellow
  let s:blue           = g:sakura_palette.blue
  let s:brightblue      = g:sakura_palette.brightblue
  let s:cyan           = g:sakura_palette.cyan
  let s:brightcyan      = g:sakura_palette.brightcyan
  let s:red            = g:sakura_palette.red
  let s:brightred       = g:sakura_palette.brightred
  let s:magenta        = g:sakura_palette.magenta
  let s:brightmagenta   = g:sakura_palette.brightmagenta
  let s:green          = g:sakura_palette.green
  let s:brightgreen     = g:sakura_palette.brightgreen
  let s:gradation1     = g:sakura_palette.gradation1
  let s:gradation2     = g:sakura_palette.gradation2
  let s:gradation3     = g:sakura_palette.gradation3
  let s:gradation4     = g:sakura_palette.gradation4
  let s:gradation5     = g:sakura_palette.gradation5

  let s:p                 = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}}
  let s:p.normal.left     = [ [ s:black, s:green ], [ s:black, s:brightgreen ] ]
  let s:p.normal.right    = [ [ s:black, s:green ], [ s:black, s:brightgreen ] ]
  let s:p.normal.middle   = [ [ s:brightgreen, s:brightblack ] ]

  let s:p.inactive.right  = [ [ s:white, s:brightblack ], [ s:white, s:brightblack ] ]
  let s:p.inactive.left   = [ [ s:white, s:brightblack ], [ s:white, s:brightblack ] ]
  let s:p.inactive.middle = [ [ s:gradation5, s:brightblack ] ]

  let s:p.insert.left     = [ [ s:black, s:blue ], [ s:black, s:brightblue ] ]
  let s:p.insert.right    = [ [ s:black, s:blue ], [ s:black, s:brightblue ] ]
  let s:p.insert.middle   = [ [ s:brightblue, s:brightblack ] ]

  let s:p.replace.left    = [ [ s:black, s:magenta ], [ s:black, s:brightmagenta ] ]
  let s:p.replace.right   = [ [ s:black, s:magenta ], [ s:black, s:brightmagenta ] ]
  let s:p.replace.middle  = [ [ s:brightmagenta, s:brightblack ] ]

  let s:p.visual.left     = [ [ s:black, s:yellow ], [ s:black, s:brightyellow ] ]
  let s:p.visual.right    = [ [ s:black, s:yellow ], [ s:black, s:brightyellow ] ]
  let s:p.visual.middle   = [ [ s:brightyellow, s:brightblack ] ]

  let s:p.tabline.left    = [ [ s:brightwhite, s:brightblack ] ]
  let s:p.tabline.tabsel  = [ [ s:black, s:white ] ]
  let s:p.tabline.middle  = [ [ s:black, s:brightblack ] ]
  let s:p.tabline.right   = [ [ s:black, s:brightwhite ] ]

  let s:p.normal.error    = [ [ s:brightwhite, s:red ] ]
  let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

  let g:lightline#colorscheme#sakura#palette = lightline#colorscheme#flatten(s:p)
endif
