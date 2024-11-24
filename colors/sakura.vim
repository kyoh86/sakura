" 'sakura.vim' -- Vim color scheme.
" Maintainer:   kyoh86 (me@kyoh86.dev)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/kyoh86/sakura

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name='sakura'
set background=light

if !has('gui_running') && &t_Co != 256
  finish
endif

let g:sakura_colors = {}
let g:sakura_colors['black'] =         '#3a2731'
let g:sakura_colors['red'] =           '#a03a3a'
let g:sakura_colors['green'] =         '#3c7f01'
let g:sakura_colors['yellow'] =        '#c07b02'
let g:sakura_colors['blue'] =          '#196a9e'
let g:sakura_colors['magenta'] =       '#a45779'
let g:sakura_colors['cyan'] =          '#53838a'
let g:sakura_colors['white'] =         '#e7c9d3'
let g:sakura_colors['brightblack'] =   '#5d3e4c'
let g:sakura_colors['brightred'] =     '#cc4d4d'
let g:sakura_colors['brightgreen'] =   '#89b97c'
let g:sakura_colors['brightyellow'] =  '#c88d00'
let g:sakura_colors['brightblue'] =    '#51b0ff'
let g:sakura_colors['brightmagenta'] = '#d29eb5'
let g:sakura_colors['brightcyan'] =    '#7da2b3'
let g:sakura_colors['brightwhite'] =   '#dee9ed'
let g:sakura_colors['gradation1'] =    '#e7c9d3'
let g:sakura_colors['gradation2'] =    '#b995a4'
let g:sakura_colors['gradation3'] =    '#977584'
let g:sakura_colors['gradation4'] =    '#7a5867'
let g:sakura_colors['gradation5'] =    '#5d3e4c'

let g:sakura_palette = {}
let g:sakura_palette['black'] =        [g:sakura_colors.black,        0]
let g:sakura_palette['red'] =          [g:sakura_colors.red,          1]
let g:sakura_palette['green'] =        [g:sakura_colors.green,        2]
let g:sakura_palette['yellow'] =       [g:sakura_colors.yellow,       3]
let g:sakura_palette['blue'] =         [g:sakura_colors.blue,         4]
let g:sakura_palette['magenta'] =      [g:sakura_colors.magenta,      5]
let g:sakura_palette['cyan'] =         [g:sakura_colors.cyan,         6]
let g:sakura_palette['white'] =        [g:sakura_colors.white,        7]
let g:sakura_palette['brightblack'] =   [g:sakura_colors.brightblack,   8]
let g:sakura_palette['brightred'] =     [g:sakura_colors.brightred,     9]
let g:sakura_palette['brightgreen'] =   [g:sakura_colors.brightgreen,   10]
let g:sakura_palette['brightyellow'] =  [g:sakura_colors.brightyellow,  11]
let g:sakura_palette['brightblue'] =    [g:sakura_colors.brightblue,    12]
let g:sakura_palette['brightmagenta'] = [g:sakura_colors.brightmagenta, 13]
let g:sakura_palette['brightcyan'] =    [g:sakura_colors.brightcyan,    14]
let g:sakura_palette['brightwhite'] =   [g:sakura_colors.brightwhite,   15]
let g:sakura_palette['gradation1'] =   [g:sakura_colors.gradation1,   239]
let g:sakura_palette['gradation2'] =   [g:sakura_colors.gradation2,   238]
let g:sakura_palette['gradation3'] =   [g:sakura_colors.gradation3,   237]
let g:sakura_palette['gradation4'] =   [g:sakura_colors.gradation4,   236]
let g:sakura_palette['gradation5'] =   [g:sakura_colors.gradation5,   235]

" Sakura Hi Groups:
" memoize common hi groups
highlight SakuraWhite guifg=#e7c9d3 ctermfg=7
highlight SakuraRed guifg=#a03a3a ctermfg=1
highlight SakuraGreen guifg=#3c7f01 ctermfg=2
highlight SakuraYellow guifg=#c07b02 ctermfg=3
highlight SakuraBlue guifg=#196a9e ctermfg=4
highlight SakuraMagenta guifg=#a45779 ctermfg=5
highlight SakuraCyan guifg=#53838a ctermfg=6
highlight SakuraBlack guifg=#3a2731 ctermfg=0
highlight SakuraRedBold guifg=#a03a3a ctermfg=1 gui=bold cterm=bold
highlight SakuraGreenBold guifg=#3c7f01 ctermfg=2 gui=bold cterm=bold
highlight SakuraYellowBold guifg=#c07b02 ctermfg=3 gui=bold cterm=bold
highlight SakuraBlueBold guifg=#196a9e ctermfg=4 gui=bold cterm=bold
highlight SakuraMagentaBold guifg=#a45779 ctermfg=5 gui=bold cterm=bold
highlight SakuraCyanBold guifg=#53838a ctermfg=6 gui=bold cterm=bold

highlight SakuraBrightRed guifg=#cc4d4d ctermfg=9
highlight SakuraBrightGreen guifg=#89b97c ctermfg=10
highlight SakuraBrightYellow guifg=#c88d00 ctermfg=11
highlight SakuraBrightBlue guifg=#51b0ff ctermfg=12
highlight SakuraBrightMagenta guifg=#d29eb5 ctermfg=13
highlight SakuraBrightCyan guifg=#7da2b3 ctermfg=14
highlight SakuraBrightBlack guifg=#5d3e4c ctermfg=8
highlight SakuraBrightWhite guifg=#dee9ed ctermfg=15

" special
highlight SakuraBrightRedBold guifg=#cc4d4d ctermfg=9 gui=bold cterm=bold
highlight SakuraGradation1 guifg=#e7c9d3 ctermfg=239
highlight SakuraGradation2 guifg=#b995a4 ctermfg=238
highlight SakuraGradation3 guifg=#977584 ctermfg=237
highlight SakuraGradation4 guifg=#7a5867 ctermfg=236
highlight SakuraGradation5 guifg=#5d3e4c ctermfg=235

" General UI:
" Normal text
highlight Normal guifg=#3a2731 ctermfg=0 guibg=#dee9ed ctermbg=15
highlight NormalFloat guifg=#3a2731 ctermfg=0 guibg=#e7c9d3 ctermbg=239

" Screen line that the cursor is
highlight! CursorLine NONE
highlight CursorLine guibg=#e7c9d3 ctermbg=239
" Screen column that the cursor is
highlight CursorColumn guibg=#b995a4 ctermbg=238

" Tab pages line filler
highlight TabLineFill guifg=#3c7f01 ctermfg=2 guibg=#dee9ed ctermbg=15
" Active tab page label
highlight TabLineSel guifg=#a03a3a ctermfg=1 guibg=#dee9ed ctermbg=15 gui=bold cterm=bold
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
highlight MatchParen guifg=#c07b02 ctermfg=3 guibg=#cc4d4d ctermbg=9 gui=bold cterm=bold

" Highlighted screen columns
highlight ColorColumn guibg=#b995a4 ctermbg=238

" Concealed element: \lambda → λ
highlight Conceal guifg=#196a9e ctermfg=4

highlight! Delimiter guifg=#3a2731 ctermfg=0

highlight! NonText guifg=#b995a4 ctermfg=238
highlight! SpecialKey guifg=#b995a4 ctermfg=238
highlight! Whitespace guifg=#b995a4 ctermfg=238

highlight Visual guifg=#dee9ed ctermfg=15 guibg=#c07b02 ctermbg=3
highlight! link VisualNOS Visual

highlight Search guifg=#dee9ed ctermfg=15 guibg=#51b0ff ctermbg=12
highlight IncSearch None
highlight IncSearch guifg=#dee9ed ctermfg=15 guibg=#d29eb5 ctermbg=13
highlight CurSearch None
highlight CurSearch guifg=#dee9ed ctermfg=15 guibg=#89b97c ctermbg=10
highlight Substitute None
highlight Substitute guifg=#dee9ed ctermfg=15 guibg=#d29eb5 ctermbg=13

highlight Underlined guifg=#196a9e ctermfg=4 gui=underline cterm=underline

highlight StatusLine guifg=#3a2731 ctermfg=0 guibg=#b995a4 ctermbg=238 gui=bold cterm=bold
highlight StatusLineNC guifg=#3a2731 ctermfg=0 guibg=#e7c9d3 ctermbg=239 gui=underline cterm=underline

" The column separating vertically split windows
highlight VertSplit guifg=#7a5867 ctermfg=236 gui=bold cterm=bold

" Current match in wildmenu completion
highlight WildMenu guifg=#196a9e ctermfg=4 guibg=#dee9ed ctermbg=15 gui=bold cterm=bold

" Directory names, special names in listing
highlight! Directory guifg=#3c7f01 ctermfg=2 gui=bold cterm=bold

" Titles for output from :set all, :autocmd, etc.
highlight! Title guifg=#c07b02 ctermfg=3 gui=bold cterm=bold

" Error messages on the command line
highlight ErrorMsg guifg=#3a2731 ctermfg=0 guibg=#a03a3a ctermbg=1
" More prompt: -- More --
highlight! MoreMsg guifg=#c07b02 ctermfg=3 gui=bold cterm=bold
" Current mode message: -- INSERT --
highlight! ModeMsg guifg=#c07b02 ctermfg=3 gui=bold cterm=bold
" 'Press enter' prompt and yes/no questions
highlight! Question guifg=#cc4d4d ctermfg=9 gui=bold cterm=bold
" Warning messages
highlight! WarningMsg guifg=#a03a3a ctermfg=1 gui=bold cterm=bold
" Gutter:
" Line number for :number and :# commands
highlight LineNr guifg=#7a5867 ctermfg=236 guibg=#e7c9d3 ctermbg=239

" Line number of CursorLine
highlight CursorLineNr guifg=#dee9ed ctermfg=15 guibg=#196a9e ctermbg=4 gui=bold cterm=bold

if hlexists('LineNrAbove')
  highlight LineNrAbove guifg=#a45779 ctermfg=5 guibg=#e7c9d3 ctermbg=239
  highlight LineNrBelow guifg=#3c7f01 ctermfg=2 guibg=#e7c9d3 ctermbg=239
endif

" Column where signs are displayed
highlight SignColumn guibg=#e7c9d3 ctermbg=239

" Line used for closed folds
highlight Folded guifg=#7a5867 ctermfg=236 gui=italic cterm=italic
" Column where folds are displayed
highlight FoldColumn guifg=#7a5867 ctermfg=236 guibg=#dee9ed ctermbg=15
" Cursor:
" Character under cursor
highlight Cursor guifg=#dee9ed ctermfg=15 guibg=#c07b02 ctermbg=3
" Character under cursor in a focused terminal
highlight link TermCursor Cursor
" Cursor in an unfocused terminal
highlight link TermCursorNC Cursor
" Visual mode cursor, selection
highlight link vCursor Cursor
" Input moder cursor
highlight! link iCursor Cursor
" Language mapping cursor
highlight! link lCursor Cursor
" Syntax Highlighting:
highlight! Special guifg=#c07b02 ctermfg=3 gui=bold cterm=bold

highlight Comment guifg=#977584 ctermfg=237 gui=italic cterm=italic
highlight Todo guifg=#3a2731 ctermfg=0 gui=bold,italic cterm=bold,italic
highlight Error guifg=#a03a3a ctermfg=1 gui=bold,inverse cterm=bold,inverse

" String constant: "this is a string"
highlight String guifg=#3c7f01 ctermfg=2

" Generic statement
highlight! Statement guifg=#c07b02 ctermfg=3
" if, then, else, endif, swicth, etc.
highlight! Conditional guifg=#c07b02 ctermfg=3
" for, do, while, etc.
highlight! Repeat guifg=#c07b02 ctermfg=3
" case, default, etc.
highlight! Label guifg=#c07b02 ctermfg=3
" try, catch, throw
highlight! Exception guifg=#a03a3a ctermfg=1
" sizeof, "+", "*", etc.
highlight! link Operator None
" Any other keyword
highlight! Keyword guifg=#a03a3a ctermfg=1

" Variable name
highlight! Identifier guifg=#196a9e ctermfg=4
" Function name
highlight! Function guifg=#196a9e ctermfg=4

" Generic preprocessor
highlight! PreProc guifg=#a45779 ctermfg=5
" Preprocessor #include
highlight! Include guifg=#a45779 ctermfg=5
" Preprocessor #define
highlight! Define guifg=#a45779 ctermfg=5
" Same as Define
highlight! Macro guifg=#a45779 ctermfg=5
" Preprocessor #if, #else, #endif, etc.
highlight! PreCondit guifg=#a45779 ctermfg=5

" Generic constant
highlight! Constant guifg=#a45779 ctermfg=5
" Character constant: 'c', '/n'
highlight! Character guifg=#a45779 ctermfg=5
" Boolean constant: TRUE, false
highlight! Boolean guifg=#a45779 ctermfg=5
" Number constant: 234, 0xff
highlight! Number guifg=#a45779 ctermfg=5
" Floating point constant: 2.3e10
highlight! Float guifg=#a45779 ctermfg=5

" Generic type
highlight! Type guifg=#53838a ctermfg=6
" static, register, volatile, etc
highlight! StorageClass guifg=#53838a ctermfg=6
" struct, union, enum, etc.
highlight! Structure guifg=#a03a3a ctermfg=1
" typedef
highlight! Typedef guifg=#a03a3a ctermfg=1
" Completion Menu:
" Popup menu: normal item
highlight Pmenu guibg=#e7c9d3 ctermbg=239
" Popup menu: selected item
highlight PmenuSel guibg=#b995a4 ctermbg=238 gui=bold cterm=bold
" Popup menu: scrollbar
highlight PmenuSbar guibg=#b995a4 ctermbg=238
" Popup menu: scrollbar thumb
highlight PmenuThumb guibg=#b995a4 ctermbg=238
" Quickfix
highlight QuickFixLine guifg=#53838a ctermfg=6 gui=bold cterm=bold
" Diffs:
highlight DiffDelete guifg=#a03a3a ctermfg=1 guibg=#dee9ed ctermbg=15
highlight DiffAdd guifg=#3c7f01 ctermfg=2 guibg=#dee9ed ctermbg=15
highlight DiffChange guifg=#53838a ctermfg=6 guibg=#dee9ed ctermbg=15
highlight DiffText guifg=#c07b02 ctermfg=3 guibg=#dee9ed ctermbg=15
highlight! link Added DiffAdd
highlight! link Changed DiffChange
highlight! link Removed DiffDelete

" Spelling:
if has("spell")
  " Not capitalised word, or compile warnings
  highlight SpellCap gui=undercurl cterm=undercurl guisp=#196a9e
  " Not recognized word
  highlight SpellBad gui=undercurl cterm=undercurl guisp=#196a9e
  " Wrong spelling for selected region
  highlight SpellLocal gui=undercurl cterm=undercurl guisp=#53838a
  " Rare word
  highlight SpellRare gui=undercurl cterm=undercurl guisp=#a45779
endif

if hlexists('FloatBorder')
  highlight FloatBorder None
  highlight FloatBorder guifg=#7a5867 ctermfg=236 gui=bold cterm=bold
  highlight FloatShadow None
  highlight FloatShadow guibg=#e7c9d3 ctermbg=239
endif

if hlexists('DiagnosticInfo')
  highlight DiagnosticDeprecated cterm=strikethrough gui=strikethrough guisp=Red
  highlight DiagnosticOk    guifg=#3c7f01 ctermfg=2
  highlight DiagnosticHint  guifg=#977584 ctermfg=237
  highlight DiagnosticInfo  guifg=#196a9e ctermfg=4
  highlight DiagnosticWarn  guifg=#a03a3a ctermfg=1
  highlight DiagnosticError guifg=#a03a3a ctermfg=1
  highlight DiagnosticUnderlineOk gui=underline cterm=underline guisp=#3c7f01
  highlight DiagnosticUnderlineHint gui=underline cterm=underline guisp=#977584
  highlight DiagnosticUnderlineInfo gui=underline cterm=underline guisp=#196a9e
  highlight DiagnosticUnderlineWarn gui=underline cterm=underline guisp=#a03a3a
  highlight DiagnosticUnderlineError gui=underline cterm=underline guisp=#a03a3a
endif

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
