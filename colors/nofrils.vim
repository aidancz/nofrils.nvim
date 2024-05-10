" term:		normal terminal
" cterm:	color terminal

hi Normal           term=NONE cterm=NONE ctermbg=0    ctermfg=15   gui=NONE guibg=NONE guifg=NONE
" 'bg' and 'fg' can only be used after 'hl-Normal', eg: 'ctermfg=bg'

" hi nofrils-default    term=NONE cterm=NONE ctermbg=0    ctermfg=15   gui=NONE guibg=NONE guifg=NONE
hi nofrils-reverse    term=NONE cterm=NONE ctermbg=15   ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-shadow     term=NONE cterm=NONE ctermbg=NONE ctermfg=7    gui=NONE guibg=NONE guifg=NONE
hi nofrils-highlight  term=NONE cterm=NONE ctermbg=8    ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi nofrils-red        term=NONE cterm=NONE ctermbg=NONE ctermfg=1    gui=NONE guibg=NONE guifg=NONE
hi nofrils-green      term=NONE cterm=NONE ctermbg=NONE ctermfg=2    gui=NONE guibg=NONE guifg=NONE
hi nofrils-yellow     term=NONE cterm=NONE ctermbg=NONE ctermfg=3    gui=NONE guibg=NONE guifg=NONE
hi nofrils-blue       term=NONE cterm=NONE ctermbg=NONE ctermfg=4    gui=NONE guibg=NONE guifg=NONE
hi nofrils-magenta    term=NONE cterm=NONE ctermbg=NONE ctermfg=5    gui=NONE guibg=NONE guifg=NONE
hi nofrils-cyan       term=NONE cterm=NONE ctermbg=NONE ctermfg=6    gui=NONE guibg=NONE guifg=NONE
hi nofrils-red-bg     term=NONE cterm=NONE ctermbg=1    ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-green-bg   term=NONE cterm=NONE ctermbg=2    ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-yellow-bg  term=NONE cterm=NONE ctermbg=3    ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-blue-bg    term=NONE cterm=NONE ctermbg=4    ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-magenta-bg term=NONE cterm=NONE ctermbg=5    ctermfg=0    gui=NONE guibg=NONE guifg=NONE
hi nofrils-cyan-bg    term=NONE cterm=NONE ctermbg=6    ctermfg=0    gui=NONE guibg=NONE guifg=NONE

hi! def link nofrils-error   nofrils-red-bg
hi! def link nofrils-warning nofrils-yellow-bg
hi! def link nofrils-success nofrils-green-bg
hi! def link nofrils-level1  nofrils-red
hi! def link nofrils-level2  nofrils-green
hi! def link nofrils-level3  nofrils-blue
hi! def link nofrils-link    nofrils-cyan
hi! def link nofrils-button  nofrils-cyan

" clear {{{

hi Boolean          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Character        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi ColorColumn      term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Comment          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Conceal          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Conditional      term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Constant         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Cursor           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi CursorColumn     term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi CursorIM         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi CursorLine       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi CursorLineNr     term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Debug            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Define           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Delimiter        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi DiffAdd          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi DiffChange       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi DiffDelete       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi DiffText         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Directive        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Directory        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Error            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi ErrorMsg         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Exception        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Float            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi FoldColumn       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Folded           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Format           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Function         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Identifier       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Ignore           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi IncSearch        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Include          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Keyword          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Label            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi LineNr           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Macro            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi MatchParen       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Menu             term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi ModeMsg          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi MoreMsg          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi NonText          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Number           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Operator         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Pmenu            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi PmenuSbar        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi PmenuSel         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi PmenuThumb       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi PreCondit        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi PreProc          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Question         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Repeat           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Scrollbar        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Search           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SignColumn       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SneakLabelMask   term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SneakLabelTarget term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SneakScope       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SneakTarget      term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Special          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpecialChar      term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpecialComment   term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpecialKey       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpellBad         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpellCap         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpellLocal       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi SpellRare        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Statement        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi StatusLine       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi StatusLineNC     term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi StorageClass     term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi String           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Structure        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi TabLine          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi TabLineFill      term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi TabLineSel       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Tag              term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Title            term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Todo             term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Tooltip          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Type             term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Typedef          term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Underlined       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi VertSplit        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi Visual           term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi VisualNOS        term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi WarningMsg       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi WildMenu         term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE

" }}}

hi! def link Comment    nofrils-shadow
hi! def link DiffAdd    nofrils-green
hi! def link DiffChange nofrils-yellow
hi! def link DiffDelete nofrils-red
hi! def link DiffText   nofrils-blue
hi! def link Folded     nofrils-yellow
hi! def link IncSearch  nofrils-reverse
hi! def link LineNr     nofrils-shadow
hi! def link PmenuSel   nofrils-highlight
hi! def link StatusLine nofrils-highlight
hi! def link Visual     nofrils-highlight

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:nofrils_status = 0
function! NofrilsToggle()
	if g:nofrils_status == 0
		hi Normal  term=NONE cterm=NONE ctermbg=0 ctermfg=7  gui=NONE guibg=NONE guifg=NONE
		hi Comment term=NONE cterm=NONE ctermbg=0 ctermfg=15 gui=NONE guibg=NONE guifg=NONE
		let g:nofrils_status = 1
	else
		hi Normal  term=NONE cterm=NONE ctermbg=0 ctermfg=15 gui=NONE guibg=NONE guifg=NONE
		hi Comment term=NONE cterm=NONE ctermbg=0 ctermfg=7  gui=NONE guibg=NONE guifg=NONE
		let g:nofrils_status = 0
	endif
endfunction
command! NofrilsToggle :call NofrilsToggle()

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" hi Tab ctermbg=8
hi! def link Tab nofrils-highlight
au BufEnter    * match Tab /\t/
au InsertEnter * match Tab /\t/
au InsertLeave * match Tab /\t/

" hi TrailingWhitespace ctermbg=3
hi! def link TrailingWhitespace nofrils-warning
au BufEnter    * 2match TrailingWhitespace /\s\+$/
au InsertEnter * 2match TrailingWhitespace /\s\+\%#\@<!$/
au InsertLeave * 2match TrailingWhitespace /\s\+$/
" https://gist.github.com/pironim/3722006

" hi! def link Test nofrils-red-bg
" au CursorMoved,CursorMovedI * 3match Test /\s\+\%#\@<!$/

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

hi! def link markdownH1          nofrils-level1
hi! def link markdownH2          nofrils-level2
hi! def link markdownH3          nofrils-level3
hi! def link markdownH4          nofrils-level1
hi! def link markdownH5          nofrils-level2
hi! def link markdownH6          nofrils-level3
hi! def link markdownH1Delimiter nofrils-level1
hi! def link markdownH2Delimiter nofrils-level2
hi! def link markdownH3Delimiter nofrils-level3
hi! def link markdownH4Delimiter nofrils-level1
hi! def link markdownH5Delimiter nofrils-level2
hi! def link markdownH6Delimiter nofrils-level3
hi! def link markdownBlockquote  Normal
