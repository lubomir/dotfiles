" Enable pathogen
call pathogen#infect()

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
set wildignore+=*.o,*.hi,*.aux,*.out,*.toc,.hg,.git,.svn,*.dep
set undofile
set undodir=$HOME/.vim/undo,.

set spelllang=cs
set nojoinspaces

set completeopt=longest,menuone

set tabstop=4
set shiftwidth=4
set softtabstop=4 " backspace deletes up to 4 spaces
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

if has("gui_running")
    let g:Powerline_symbols = 'fancy'
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
else
    let g:Powerline_loaded = 1
endif

au BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

" highlight VSC conflicting line
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

runtime! indent.vim

map <F5>r :syntax off:syntax on
map <F5>h /\(^\\| \)[iovksvzu]\( \\|$\)/
map <F5>f :set textwidth=75

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Highlight invisible characters
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR>

nnoremap <F6> :GundoToggle<CR>
