hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "nofrils"

set background=dark

" Baseline
hi Normal term=NONE cterm=NONE ctermfg=255 ctermbg=235 gui=NONE guifg=NONE guibg=NONE

" Faded
hi ColorColumn    term=NONE cterm=NONE ctermfg=NONE  ctermbg=236  gui=NONE guifg=NONE    guibg=NONE
hi Comment        term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi FoldColumn     term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Folded         term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi LineNr         term=NONE cterm=NONE ctermfg=8     ctermbg=bg   gui=NONE guifg=NONE guibg=NONE
hi NonText        term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SignColumn     term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialComment term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialKey     term=NONE cterm=NONE ctermfg=242   ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StatusLineNC   term=NONE cterm=NONE ctermfg=fg    ctermbg=242  gui=NONE guifg=NONE      guibg=NONE
hi VertSplit      term=NONE cterm=NONE ctermfg=black ctermbg=242  gui=NONE guifg=NONE   guibg=NONE

" Highlighted
hi CursorColumn term=NONE cterm=NONE ctermfg=NONE  ctermbg=236   gui=NONE guifg=NONE    guibg=NONE
hi CursorIM     term=NONE cterm=NONE ctermfg=black ctermbg=4     gui=NONE guifg=NONE   guibg=NONE
hi CursorLineNr term=NONE cterm=NONE ctermfg=NONE  ctermbg=black gui=NONE guifg=NONE    guibg=NONE
hi CursorLine   term=NONE cterm=NONE ctermfg=NONE  ctermbg=236   gui=NONE guifg=NONE    guibg=NONE
hi Cursor       term=NONE cterm=NONE ctermfg=black ctermbg=4     gui=NONE guifg=NONE   guibg=NONE
hi Directory    term=NONE cterm=NONE ctermfg=69    ctermbg=NONE  gui=NONE guifg=NONE guibg=NONE
hi ErrorMsg     term=NONE cterm=NONE ctermfg=fg    ctermbg=52    gui=NONE guifg=NONE      guibg=NONE
hi Error        term=NONE cterm=NONE ctermfg=fg    ctermbg=52    gui=NONE guifg=NONE      guibg=NONE
hi IncSearch    term=NONE cterm=NONE ctermfg=black ctermbg=green gui=NONE guifg=NONE   guibg=NONE
hi MatchParen   term=NONE cterm=NONE ctermfg=15    ctermbg=4     gui=NONE guifg=NONE guibg=NONE
hi ModeMsg      term=NONE cterm=NONE ctermfg=69    ctermbg=NONE  gui=NONE guifg=NONE guibg=NONE
hi MoreMsg      term=NONE cterm=NONE ctermfg=69    ctermbg=NONE  gui=NONE guifg=NONE guibg=NONE
hi PmenuSel     term=NONE cterm=NONE ctermfg=black ctermbg=13    gui=NONE guifg=NONE   guibg=NONE
hi Question     term=NONE cterm=NONE ctermfg=69    ctermbg=NONE  gui=NONE guifg=NONE guibg=NONE
hi Search       term=NONE cterm=NONE ctermfg=black ctermbg=6     gui=NONE guifg=NONE   guibg=NONE
hi StatusLine   term=NONE cterm=NONE ctermfg=black ctermbg=fg    gui=NONE guifg=NONE   guibg=NONE
hi Todo         term=NONE cterm=NONE ctermfg=10    ctermbg=NONE  gui=NONE guifg=NONE guibg=NONE
hi WarningMsg   term=NONE cterm=NONE ctermfg=fg    ctermbg=52    gui=NONE guifg=NONE      guibg=NONE
hi WildMenu     term=NONE cterm=NONE ctermfg=fg    ctermbg=black gui=NONE guifg=NONE      guibg=NONE

" Reversed
hi PmenuSbar  term=reverse           cterm=reverse           ctermfg=NONE ctermbg=NONE gui=NONE           guifg=NONE guibg=NONE
hi Pmenu      term=reverse           cterm=reverse           ctermfg=NONE ctermbg=NONE gui=NONE           guifg=NONE guibg=NONE
hi PmenuThumb term=reverse           cterm=reverse           ctermfg=NONE ctermbg=NONE gui=NONE           guifg=NONE guibg=NONE
hi TabLineSel term=reverse           cterm=reverse           ctermfg=NONE ctermbg=NONE gui=NONE           guifg=NONE guibg=NONE
hi Visual     term=reverse           cterm=reverse           ctermfg=NONE ctermbg=NONE gui=NONE           guifg=NONE guibg=NONE
hi VisualNOS  term=reverse,underline cterm=reverse,underline ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Diff
hi DiffAdd    term=NONE cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi DiffChange term=NONE cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi DiffDelete term=NONE cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi DiffText   term=NONE cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Spell
hi SpellBad   term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpellCap   term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpellLocal term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpellRare  term=underline cterm=underline ctermfg=13 ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Vim Features
hi Menu        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Scrollbar   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi TabLineFill term=NONE cterm=NONE ctermfg=fg   ctermbg=242  gui=NONE guifg=NONE   guibg=NONE
hi TabLine     term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tooltip     term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Syntax Highlighting (or lack of)
hi Boolean      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Character    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conceal      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conditional  term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Constant     term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Debug        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Define       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Delimiter    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Directive    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Exception    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Float        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Format       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Function     term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Identifier   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Ignore       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Include      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Keyword      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Label        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Macro        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Number       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Operator     term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreCondit    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreProc      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Repeat       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialChar  term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Special      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Statement    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StorageClass term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi String       term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Structure    term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tag          term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Title        term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Typedef      term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Type         term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Underlined   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Sneak
hi SneakLabelMask   term=NONE cterm=NONE ctermfg=black ctermbg=195 gui=NONE guifg=NONE guibg=NONE
hi SneakTarget      term=NONE cterm=NONE ctermfg=black ctermbg=195 gui=NONE guifg=NONE guibg=NONE
hi SneakLabelTarget term=NONE cterm=NONE ctermfg=black ctermbg=183 gui=NONE guifg=NONE guibg=NONE
hi SneakScope       term=NONE cterm=NONE ctermfg=black ctermbg=183 gui=NONE guifg=NONE guibg=NONE
