set nocompatible

set exrc

syntax on

set smartindent

set background=dark

set ignorecase
set smartcase
set hlsearch
set incsearch
set hidden

set scrolloff=5
set nonumber
set showcmd

"set showbreak=+
set showbreak=↪
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*.hi,*.aux,*.out,*.toc,.hg,.git,.svn
set undofile
set undodir=/home/lubik/.vim/undo,.

set spelllang=cs
set nojoinspaces

set completeopt=longest,menuone

set tabstop=4
set shiftwidth=4
set expandtab

set foldmethod=syntax
set foldlevel=5

set formatoptions+=ro

set autoread

filetype plugin on

let g:disablerecent = 1
let g:snips_author = 'Lubomír Sedlář'

let g:haddock_browser = "epiphany"
let g:haddock_browser_callformat = "%s --new-tab %s"
let g:haddock_indexfiledir="$HOME/.vim/"

au Bufenter *.hs compiler ghc

au BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

" highlight VSC conflicting line
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

runtime! indent.vim

map <F5>r :syntax off
map <F5>h /\(^\\| \)[iovksvzu]\( \\|$\)/
map <F5>f :set textwidth=75

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]