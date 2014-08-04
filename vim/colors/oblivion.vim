" Vim color file
" Maintainer: Lubomír Sedlář <lubomir.sedlar@gmail.com>
" Based on Oblivion color scheme of gedit.

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "oblivion"

hi Normal       guifg=#eeeeec guibg=#2e3436       ctermfg=gray ctermbg=black
hi Todo         guifg=#888a85 gui=bold
hi Note         guifg=#888a85 gui=bold
hi Search       guibg=#fce94f
hi IncSearch    guibg=#fce94f
hi SpecialKey   guifg=#729fcf
"hi ColorColumn  guibg=#414A4D
"hi ColorColumn  guibg=#666666
hi ColorColumn  guibg=#414A4D
hi CursorLine   guibg=#343B3D

hi TabLineFill  guifg=#666666
hi TabLine      guibg=#666666

hi Pmenu        guibg=#75507B

hi NonText      guifg=#888a85 guibg=#2e3436

hi StatusLine   guifg=#000000 guibg=#888a85
hi StatusLineNC guifg=#000000 guibg=#888a85
hi LineNr       guifg=#888a85 guibg=#000000       ctermfg=lightgray ctermbg=black
hi FoldColumn   guifg=#888a85 guibg=#000000       ctermfg=lightgray ctermbg=black
hi Folded       guifg=#729fcf guibg=#000000
hi SignColumn   guifg=#888a85 guibg=#000000       ctermfg=lightgray ctermbg=black

hi Comment      guifg=#888a85 ctermfg=lightgrey
hi Constant     guifg=#edd400
hi Special      guifg=#ce5c00
hi Identifier   guifg=#8ae234 gui=bold
hi Statement    guifg=#eeeeec gui=bold
hi PreProc      guifg=#ad7fa8
hi type         guifg=#8ae234
