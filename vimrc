call pathogen#infect()
syntax on
filetype plugin indent on
set nofoldenable
set nocompatible
set nobackup
set nowb
set noswapfile

" syntax highligting
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" quiet pls
set visualbell t_vb=

" turn on line numbers
set number

" 4 space softabs default
set expandtab
set ts=2
set sw=2
set backspace=indent,eol,start
set list
set listchars=tab:\ \ ,trail:·,nbsp:_,extends:>,precedes:<

let mapleader = " "
map <Leader>n :NERDTreeToggle<CR>
map <Leader><Leader> :ZoomWin<CR>

" Remove trailing spaces
map <Leader>d$ :%s/\s\+$//ge<CR>
map <Leader>a= :Tabularize /=<CR>
map <Leader>a: :Tabularize /:<CR>
map <Leader><LEFT> <C-w>h
map <Leader><DOWN> <C-w>j
map <Leader><UP> <C-w>k
map <Leader><RIGHT> <C-w>l

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2

" Open NERDTree if no file specified
autocmd vimenter * if !argc() | NERDTree | endif

" Powerline
let g:Powerline_symbols = 'compatible'

" Remove the top toolbar
set guioptions-=T