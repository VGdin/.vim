"B
"" #######################################
" PLUGINS
" #######################################
" Automatic installation of 'vim plug'
" Place the following code in your .vimrc before plug#begin() call
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Surround keyword, s, mighty fine
Plug 'https://github.com/tpope/vim-surround'

" Nerdtree 
Plug 'https://github.com/scrooloose/nerdtree'

" Repeat 
Plug 'https://github.com/tpope/vim-repeat'

" Tmux pane integration
Plug 'https://github.com/christoomey/vim-tmux-navigator'

" Color Theme, mayby not supposed to be here
Plug 'https://github.com/altercation/vim-colors-solarized'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" #######################################
" COLORS
" #######################################
syntax enable   			"enable syntax hightlighting
set background=dark 		"sets the backgroudn to dark
let g:solarized_termcolors=256	"Sets terminal colors to 256?
colorscheme solarized		"setting colorscheme


" #######################################
" Tabs & Spaces
" #######################################
filetype indent on	"Enables file specific indentation
set tabstop=4		"Tabs are 4 size read
set softtabstop=4	"Tab press are for spaces
set expandtab		"Make tabs into spaces


" #######################################
" UI Config
" #######################################
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


" #######################################
" Remaps
" #######################################
let mapleader =" " "Changes leader from backslash to space
"Changes window navigation to just, control + direction
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" vv to generate new vertical split
 nnoremap <silent> vv <C-w>v

" Toggle NerdTree with ctrl N
map <C-n> :NERDTreeToggle<CR>
