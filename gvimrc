set columns=120
set lines=60
set number
set colorcolumn=80
set cursorline

colorscheme oblivion

"set spell

set showtabline=2
set laststatus=2
set guioptions=acim
set guicursor+=a:blinkon600-blinkoff600
set mouse=

"set guifont=Terminus\ 12

let g:disablerecent = 0
let g:manpageview_pgm = "$HOME/.bin/man.sh"

"command -bar Hexmode call ToggleHex()
"
"function ToggleHex()
"    let l:modified=&mod
"    let l:oldreadonly=&readonly
"    let &readonly=0
"    let l:oldmodifiable=&modifiable
"    let &modifiable=1
"    if !exists("b:editHex") || !b:editHex
"        let b:oldft=&ft
"        let b:oldbin=&bin
"        setlocal binary
"        let &ft="xxd"
"        let b:editHex=1
"        %!xxd
"    else
"        let &ft=b:oldft
"        if !b:oldbin
"            setlocal nobinary
"        endif
"        let b:editHex=0
"        %!xxd -r
"    endif
"    let &mod=l:modified
"    let &readonly=l:oldreadonly
"    let &modifiable=l:oldmodifiable
"endfunction
