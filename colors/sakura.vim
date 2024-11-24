" 'sakura.vim' -- Vim color scheme.
" Maintainer:   kyoh86 (me@kyoh86.dev)
" Description:  Colorscheme that focus ease of use and clearly defined contrasting colors with a slightly earthy tone.
" Original Source: https://github.com/kyoh86/sakura

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name='sakura'

if !has('gui_running') && &t_Co != 256
  finish
endif

let g:sakura_colors = {}
let g:sakura_colors['black'] =        '#3f2b36'
let g:sakura_colors['red'] =          '#a22041'
let g:sakura_colors['green'] =        '#007b43'
let g:sakura_colors['yellow'] =       '#f8b500'
let g:sakura_colors['blue'] =         '#007bbb'
let g:sakura_colors['magenta'] =      '#aa5e81'
let g:sakura_colors['cyan'] =         '#468198'
let g:sakura_colors['white'] =        '#b29f9a'
let g:sakura_colors['lightblack'] =   '#786d6e'
let g:sakura_colors['lightred'] =     '#e83929'
let g:sakura_colors['lightgreen'] =   '#68be8d'
let g:sakura_colors['lightyellow'] =  '#ffd900'
let g:sakura_colors['lightblue'] =    '#00a1e9'
let g:sakura_colors['lightmagenta'] = '#d8aabf'
let g:sakura_colors['lightcyan'] =    '#86b2c5'
let g:sakura_colors['lightwhite'] =   '#f8fbfe'
let g:sakura_colors['hardblack'] =    '#281a1c'
let g:sakura_colors['grayscale1'] =   '#5b4d4e'
let g:sakura_colors['grayscale2'] =   '#786d6e'
let g:sakura_colors['grayscale3'] =   '#8b7d7e'
let g:sakura_colors['grayscale4'] =   '#b29f9a'
let g:sakura_colors['grayscale5'] =   '#d8c9bf'

let g:sakura_palette = {}
let g:sakura_palette['black'] =        [g:sakura_colors.black,        0]
let g:sakura_palette['red'] =          [g:sakura_colors.red,          1]
let g:sakura_palette['green'] =        [g:sakura_colors.green,        2]
let g:sakura_palette['yellow'] =       [g:sakura_colors.yellow,       3]
let g:sakura_palette['blue'] =         [g:sakura_colors.blue,         4]
let g:sakura_palette['magenta'] =      [g:sakura_colors.magenta,      5]
let g:sakura_palette['cyan'] =         [g:sakura_colors.cyan,         6]
let g:sakura_palette['white'] =        [g:sakura_colors.white,        7]
let g:sakura_palette['lightblack'] =   [g:sakura_colors.lightblack,   8]
let g:sakura_palette['lightred'] =     [g:sakura_colors.lightred,     9]
let g:sakura_palette['lightgreen'] =   [g:sakura_colors.lightgreen,   10]
let g:sakura_palette['lightyellow'] =  [g:sakura_colors.lightyellow,  11]
let g:sakura_palette['lightblue'] =    [g:sakura_colors.lightblue,    12]
let g:sakura_palette['lightmagenta'] = [g:sakura_colors.lightmagenta, 13]
let g:sakura_palette['lightcyan'] =    [g:sakura_colors.lightcyan,    14]
let g:sakura_palette['lightwhite'] =   [g:sakura_colors.lightwhite,   15]
let g:sakura_palette['hardblack'] =    [g:sakura_colors.hardblack,    232]
let g:sakura_palette['grayscale1'] =   [g:sakura_colors.grayscale1,   235]
let g:sakura_palette['grayscale2'] =   [g:sakura_colors.grayscale2,   236]
let g:sakura_palette['grayscale3'] =   [g:sakura_colors.grayscale3,   237]
let g:sakura_palette['grayscale4'] =   [g:sakura_colors.grayscale4,   238]
let g:sakura_palette['grayscale5'] =   [g:sakura_colors.grayscale5,   239]

" Set a highlight group.
" `params` contains some options like below.
"   - fg     color
"   - bg     color
"   - empha  list of bold|italic|inverseg|underline|undercurlg
"   - guisp  a color for various underlines
"
" Which color for fg or bg you can get it from g:sakura_palette e.g.:
"   call SakuraHighlight(Pmenu, {'fg': g:sakura_palette.red})
function! SakuraHighlight(group, params)
  " params: fg, bg, empha, guisp
  let l:histr = [ 'highlight', a:group ]

  let l:fg = get(a:params, 'fg', get(a:params, 'foreground', []))
  if len(l:fg) >= 2
    call extend(l:histr, ['guifg=' . l:fg[0], 'ctermfg=' . l:fg[1]])
  endif

  let l:bg = get(a:params, 'bg', get(a:params, 'background', []))
  if len(l:bg) >= 2
    call extend(l:histr, ['guibg=' . l:bg[0], 'ctermbg=' . l:bg[1]])
  endif

  let l:empha = get(a:params, 'empha', [])
  let l:empha = filter(l:empha, {_, v -> v !=# ''})

  if len(l:empha) > 0
    let l:em = join(l:empha, ',')
    call extend(l:histr, ['gui=' . l:em, 'cterm=' . l:em])
  endif

  let l:guisp = get(a:params, 'guisp', [])
  if len(l:guisp) > 0
    call add(l:histr, 'guisp=' . l:guisp[0])
  endif

  execute join(l:histr, ' ')
endfunction

" Sakura Hi Groups:
" memoize common hi groups
highlight SakuraWhite guifg=#3f2b36 ctermfg=0
highlight SakuraRed guifg=#a22041 ctermfg=1
highlight SakuraGreen guifg=#007b43 ctermfg=2
highlight SakuraYellow guifg=#f8b500 ctermfg=3
highlight SakuraBlue guifg=#007bbb ctermfg=4
highlight SakuraMagenta guifg=#aa5e81 ctermfg=5
highlight SakuraCyan guifg=#468198 ctermfg=6
highlight SakuraBlack guifg=#3f2b36 ctermfg=0
highlight SakuraRedBold guifg=#a22041 ctermfg=1 gui=bold cterm=bold
highlight SakuraGreenBold guifg=#007b43 ctermfg=2 gui=bold cterm=bold
highlight SakuraYellowBold guifg=#f8b500 ctermfg=3 gui=bold cterm=bold
highlight SakuraBlueBold guifg=#007bbb ctermfg=4 gui=bold cterm=bold
highlight SakuraMagentaBold guifg=#aa5e81 ctermfg=5 gui=bold cterm=bold
highlight SakuraCyanBold guifg=#468198 ctermfg=6 gui=bold cterm=bold

highlight SakuraBrightRed guifg=#e83929 ctermfg=9
highlight SakuraBrightGreen guifg=#68be8d ctermfg=10
highlight SakuraBrightYellow guifg=#ffd900 ctermfg=11
highlight SakuraBrightBlue guifg=#00a1e9 ctermfg=12
highlight SakuraBrightMagenta guifg=#d8aabf ctermfg=13
highlight SakuraBrightCyan guifg=#86b2c5 ctermfg=14
highlight SakuraBrightBlack guifg=#786d6e ctermfg=8
highlight SakuraBrightWhite guifg=#f8fbfe ctermfg=15

" special
highlight SakuraBrightRedBold guifg=#e83929 ctermfg=9 gui=bold cterm=bold
highlight SakuraGrayScale1 guifg=#5b4d4e ctermfg=235
highlight SakuraGrayScale2 guifg=#786d6e ctermfg=236
highlight SakuraGrayScale3 guifg=#8b7d7e ctermfg=237
highlight SakuraGrayScale4 guifg=#b29f9a ctermfg=238
highlight SakuraGrayScale5 guifg=#d8c9bf ctermfg=239

" General UI:
" Normal text
highlight Normal guifg=#f8fbfe ctermfg=15 guibg=#3f2b36 ctermbg=0
highlight NormalFloat guifg=#f8fbfe ctermfg=15 guibg=#5b4d4e ctermbg=235

" Screen line that the cursor is
highlight! CursorLine NONE
highlight CursorLine guibg=#5b4d4e ctermbg=235
" Screen column that the cursor is
highlight CursorColumn guibg=#786d6e ctermbg=8

" Tab pages line filler
highlight TabLineFill guifg=#007b43 ctermfg=2 guibg=#3f2b36 ctermbg=0
" Active tab page label
highlight TabLineSel guifg=#a22041 ctermfg=1 guibg=#3f2b36 ctermbg=0 gui=bold cterm=bold
" Not active tab page label
highlight! link TabLine TabLineFill

" Match paired bracket under the cursor
highlight MatchParen guifg=#f8b500 ctermfg=3 guibg=#786d6e ctermbg=8 gui=bold cterm=bold

" Highlighted screen columns
highlight ColorColumn guibg=#786d6e ctermbg=8

" Concealed element: \lambda → λ
highlight Conceal guifg=#007bbb ctermfg=4

highlight! link NonText SakuraBrightBlack
highlight! link SpecialKey SakuraBrightBlack
highlight! link Whitespace SakuraBrightBlack

highlight Visual guifg=#3f2b36 ctermfg=0 guibg=#f8b500 ctermbg=3
highlight! link VisualNOS Visual

highlight Search guifg=#3f2b36 ctermfg=0 guibg=#00a1e9 ctermbg=12
highlight IncSearch None
highlight IncSearch guifg=#3f2b36 ctermfg=0 guibg=#d8aabf ctermbg=13
highlight CurSearch None
highlight CurSearch guifg=#3f2b36 ctermfg=0 guibg=#68be8d ctermbg=10
highlight Substitute None
highlight Substitute guifg=#3f2b36 ctermfg=0 guibg=#d8aabf ctermbg=13

highlight Underlined guifg=#007bbb ctermfg=4 gui=underline cterm=underline

highlight StatusLine guifg=#b29f9a ctermfg=7 guibg=#786d6e ctermbg=236 gui=bold cterm=bold
highlight StatusLineNC guifg=#b29f9a ctermfg=7 guibg=#3f2b36 ctermbg=0 gui=underline cterm=underline

" The column separating vertically split windows
highlight VertSplit guifg=#b29f9a ctermfg=238 gui=bold cterm=bold

" Current match in wildmenu completion
highlight WildMenu guifg=#007bbb ctermfg=4 guibg=#3f2b36 ctermbg=0 gui=bold cterm=bold

" Directory names, special names in listing
highlight! link Directory SakuraGreenBold

" Titles for output from :set all, :autocmd, etc.
highlight! link Title SakuraYellowBold

" Error messages on the command line
highlight ErrorMsg guifg=#f8fbfe ctermfg=15 guibg=#a22041 ctermbg=1
" More prompt: -- More --
highlight! link MoreMsg SakuraYellowBold
" Current mode message: -- INSERT --
highlight! link ModeMsg SakuraYellowBold
" 'Press enter' prompt and yes/no questions
highlight! link Question SakuraBrightRedBold
" Warning messages
highlight! link WarningMsg SakuraRedBold
" Gutter:
" Line number for :number and :# commands
highlight LineNr guifg=#b29f9a ctermfg=7 guibg=#281a1c ctermbg=232

" Line number of CursorLine
highlight CursorLineNr guifg=#5b4d4e ctermfg=235 guibg=#007bbb ctermbg=4 gui=bold cterm=bold

if hlexists('LineNrAbove')
  highlight LineNrAbove guifg=#d8aabf ctermfg=13 guibg=#281a1c ctermbg=232
  highlight LineNrBelow guifg=#68be8d ctermfg=10 guibg=#281a1c ctermbg=232
endif

" Column where signs are displayed
highlight SignColumn guibg=#281a1c ctermbg=232

" Line used for closed folds
highlight Folded guifg=#b29f9a ctermfg=7 guibg=#3f2b36 ctermbg=0 gui=italic cterm=italic
" Column where folds are displayed
highlight FoldColumn guifg=#b29f9a ctermfg=7 guibg=#3f2b36 ctermbg=0
" Cursor:
" Character under cursor
highlight Cursor guifg=#3f2b36 ctermfg=0 guibg=#ffd900 ctermbg=11
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
highlight! link Special SakuraBrightYellow

highlight Comment guifg=#b29f9a ctermfg=7 gui=italic cterm=italic
highlight Todo guifg=#f8fbfe ctermfg=15 guibg=#3f2b36 ctermbg=0 gui=bold,italic cterm=bold,italic
highlight Error guifg=#e83929 ctermfg=9 guibg=#3f2b36 ctermbg=0 gui=bold,inverse cterm=bold,inverse

" String constant: "this is a string"
highlight String guifg=#007b43 ctermfg=2

" Generic statement
highlight! link Statement SakuraYellow
" if, then, else, endif, swicth, etc.
highlight! link Conditional SakuraYellow
" for, do, while, etc.
highlight! link Repeat SakuraYellow
" case, default, etc.
highlight! link Label SakuraYellow
" try, catch, throw
highlight! link Exception SakuraRed
" sizeof, "+", "*", etc.
highlight! link Operator None
" Any other keyword
highlight! link Keyword SakuraRed

" Variable name
highlight! link Identifier SakuraBrightBlue
" Function name
highlight! link Function SakuraBlue

" Generic preprocessor
highlight! link PreProc SakuraMagenta
" Preprocessor #include
highlight! link Include SakuraMagenta
" Preprocessor #define
highlight! link Define SakuraMagenta
" Same as Define
highlight! link Macro SakuraMagenta
" Preprocessor #if, #else, #endif, etc.
highlight! link PreCondit SakuraMagenta

" Generic constant
highlight! link Constant SakuraBrightMagenta
" Character constant: 'c', '/n'
highlight! link Character SakuraBrightMagenta
" Boolean constant: TRUE, false
highlight! link Boolean SakuraBrightMagenta
" Number constant: 234, 0xff
highlight! link Number SakuraBrightMagenta
" Floating point constant: 2.3e10
highlight! link Float SakuraBrightMagenta

" Generic type
highlight! link Type SakuraCyan
" static, register, volatile, etc
highlight! link StorageClass SakuraCyan
" struct, union, enum, etc.
highlight! link Structure SakuraBrightRed
" typedef
highlight! link Typedef SakuraBrightRed
" Completion Menu:
" Popup menu: normal item
highlight Pmenu guibg=#5b4d4e ctermbg=235
" Popup menu: selected item
highlight PmenuSel guibg=#786d6e ctermbg=236 gui=bold cterm=bold
" Popup menu: scrollbar
highlight PmenuSbar guibg=#786d6e ctermbg=236
" Popup menu: scrollbar thumb
highlight PmenuThumb guibg=#786d6e ctermbg=236
" Diffs:
highlight DiffDelete guifg=#e83929 ctermfg=9 guibg=#3f2b36 ctermbg=0
highlight DiffAdd guifg=#68be8d ctermfg=10 guibg=#3f2b36 ctermbg=0
highlight DiffChange guifg=#468198 ctermfg=6 guibg=#3f2b36 ctermbg=0
highlight DiffText guifg=#ffd900 ctermfg=11 guibg=#3f2b36 ctermbg=0
" Spelling:
if has("spell")
  " Not capitalised word, or compile warnings
  highlight SpellCap gui=undercurl cterm=undercurl guisp=#007bbb
  " Not recognized word
  highlight SpellBad gui=undercurl cterm=undercurl guisp=#007bbb
  " Wrong spelling for selected region
  highlight SpellLocal gui=undercurl cterm=undercurl guisp=#468198
  " Rare word
  highlight SpellRare gui=undercurl cterm=undercurl guisp=#aa5e81
endif

if hlexists('FloatBorder')
  highlight FloatBorder None
  highlight FloatBorder guifg=#b29f9a ctermfg=238 gui=bold cterm=bold
  highlight FloatShadow None
  highlight FloatShadow guibg=#5b4d4e ctermbg=235
endif

if hlexists('DiagnosticInfo')
  highlight DiagnosticDeprecated cterm=strikethrough gui=strikethrough guisp=Red
  highlight DiagnosticOk    guifg=#68be8d ctermfg=10
  highlight DiagnosticHint  guifg=#8b7d7e ctermfg=237
  highlight DiagnosticInfo  guifg=#00a1e9 ctermfg=12
  highlight DiagnosticWarn  guifg=#e83929 ctermfg=9
  highlight DiagnosticError guifg=#a22041 ctermfg=1
  highlight DiagnosticUnderlineOk gui=underline cterm=underline guisp=#68be8d
  highlight DiagnosticUnderlineHint gui=underline cterm=underline guisp=#8b7d7e
  highlight DiagnosticUnderlineInfo gui=underline cterm=underline guisp=#00a1e9
  highlight DiagnosticUnderlineWarn gui=underline cterm=underline guisp=#e83929
  highlight DiagnosticUnderlineError gui=underline cterm=underline guisp=#a22041
endif

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
