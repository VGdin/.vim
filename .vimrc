"
" Random Stuff
"

let mapleader =" " "Changes leader from backslash to space

"
" COLORS
"
syntax enable   			"enable syntax hightlighting
set background=dark 		"sets the backgroudn to dark
let g:solarized_termcolors=256	"Sets terminal colors to 256?
colorscheme solarized		"setting colorscheme


"
" Tabs & Spaces
"
filetype indent on	"Enables file specific indentation
set tabstop=4		"Tabs are 4 size read
set softtabstop=4	"Tab press are for spaces
set expandtab		"Make tabs into spaces


"
" UI Config
"
set number			"Show Line Numbers
set showcmd	    	"Shom commandbar
set cursorline		"Highlight the current line
set wildmenu		"Enables visual auto comlete forcommand menu
set lazyredraw		"redraw only when needed
set showmatch		"Highlight the matchin parantheses, or wings {([])}

"Cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set incsearch   "search as characters are entered
set hlsearch    "highlight matches

