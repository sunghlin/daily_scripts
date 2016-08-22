"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sung-Han Lin's vim setting
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 256 colors
set t_Co=256

syntax enable           " enable syntax processing
set tabstop=4       	" number of visual spaces per TAB
set shiftwidth=4
"set number				" show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set nohlsearch          " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=marker

set backspace=2     " allow backspacing over everything in insert mode

set autoindent			" always set autoindenting on
set smartindent

set mouse=r				" for mouse select copy and paste

" highlight last inserted text
nnoremap gV `[v`]

" allows cursor change in tmux mode
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set nocompatible
set viminfo='20,\"50	" read/write a .viminfo file, don't store more

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,sjis,big5,latin1

"[ status ]
set laststatus=2        " display status line

highlight User1 ctermbg=235 ctermfg=red
highlight User2 term=underline ctermbg=235 ctermfg=green
highlight User3 term=underline ctermbg=235 ctermfg=yellow
highlight User4 term=underline ctermbg=235 ctermfg=white
highlight User5 ctermbg=235 ctermfg=cyan
highlight User6 ctermbg=235 ctermfg=white
set statusline=%4*%<\ %1*[%F]%4*\ %5*%y%4*%=%6*%m%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>

"[ coloring ]
highlight comment    term=bold cterm=bold ctermfg=blue
highlight type       ctermfg=green
highlight statement  ctermfg=yellow
highlight search     term=reverse cterm=underline ctermbg=black ctermfg=red

"[ cursor line ]
highlight CursorLine   cterm=NONE ctermbg=235 guibg=darkgray
highlight CursorColumn cterm=NONE ctermbg=239 guibg=darkgray

" Handle tmux $TERM quirks in vim
if $TERM =~ '^screen-256color'
	map <Esc>OH <Home>
	map! <Esc>OH <Home>
	map <Esc>OF <End>
	map! <Esc>OF <End>
endif
