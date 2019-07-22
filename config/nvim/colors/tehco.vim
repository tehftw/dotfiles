"		tehco, by tehftw aka wojslaw           
let colors_name = "tehco"

" " Set 'background' back to the default.  The value can't always be estimated
" " and is then guessed.
" hi clear Normal
" set bg&
" 
" " Remove all existing highlighting and set the defaults.
"hi clear

" colors:
hi Visual         cterm=reverse
hi SpecialKey     ctermfg=DarkCyan guifg=Cyan
hi NonText        ctermfg=8 gui=bold guifg=Blue
hi Directory      ctermfg=6 guifg=Cyan
hi MoreMsg        ctermfg=10 gui=bold guifg=SeaGreen
hi ModeMsg        cterm=bold gui=bold
hi LineNr         ctermfg=3 guifg=Yellow
hi CursorLineNr   ctermfg=3 gui=bold guifg=Yellow
hi Question       ctermfg=2 gui=bold guifg=Green
hi StatusLine     cterm=bold,reverse gui=bold,reverse
hi StatusLineNC   cterm=reverse gui=reverse
hi VertSplit      cterm=reverse gui=reverse
hi Title          ctermfg=DarkYellow gui=bold guifg=Magenta
hi Visual         cterm=reverse guibg=DarkGrey
hi WarningMsg     ctermfg=1 guifg=Red
hi WildMenu       ctermfg=0  ctermbg=11 guifg=Black guibg=Yellow
hi Folded         ctermfg=14 ctermbg=8 guifg=Cyan guibg=DarkGrey
hi FoldColumn     ctermfg=14 ctermbg=15 guifg=Cyan guibg=Grey
hi DiffAdd        ctermbg=4 guibg=DarkBlue
hi DiffChange     ctermbg=5  ctermfg=0 guibg=DarkMagenta
hi DiffDelete     ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText       cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn     ctermfg=6  ctermbg=8 guifg=Cyan guibg=Grey
hi SignColumn     ctermfg=6  ctermbg=8 guifg=Cyan guibg=Grey
hi Conceal        ctermfg=15 ctermbg=8 guifg=LightGrey guibg=DarkGrey
hi SpellBad       cterm=underline gui=undercurl guisp=Red
hi SpellCap       cterm=underline gui=undercurl guisp=Blue
hi SpellRare      cterm=underline gui=undercurl guisp=Magenta
hi SpellLocal     cterm=underline gui=undercurl guisp=Cyan
hi Pmenu          ctermfg=0  ctermbg=13 guibg=Magenta
hi PmenuSel       ctermfg=15 ctermbg=0 guibg=DarkGrey
hi PmenuSbar      ctermbg=15 guibg=Grey
hi PmenuThumb     ctermbg=15 guibg=White
hi TabLine        cterm=underline ctermfg=15 ctermbg=8 gui=underline guibg=DarkGrey
hi CursorColumn   ctermbg=8 guibg=Grey40


hi Type           ctermfg=DarkGreen
hi Comment        ctermfg=Cyan guifg=#80a0ff
hi Constant       ctermfg=DarkMagenta guifg=#ffa0a0
hi Special        ctermfg=DarkYellow guifg=Orange
hi Statement      ctermfg=DarkYellow gui=bold guifg=#ffff60
hi PreProc        ctermfg=Darkblue guifg=#ff80ff
hi Underlined     ctermfg=7 cterm=underline gui=underline guifg=#80a0ff
hi Ignore         ctermfg=DarkGrey guifg=bg
hi Todo           ctermfg=DarkBlue ctermbg=Yellow guifg=Blue guibg=Yellow


hi ErrorMsg       ctermfg=0 ctermbg=1 guifg=White guibg=Red
hi Identifier     cterm=bold ctermfg=DarkYellow guifg=#40ffff


hi MatchParen     ctermbg=6 ctermfg=0 guibg=DarkCyan


hi link manUnderline Underlined
hi link Error ErrorMsg
