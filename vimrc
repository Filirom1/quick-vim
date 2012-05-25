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
map <leader>n :NERDTreeToggle<CR>
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

" Miscellaneous
" =============

" set filetype to js for files with node shebang thing these files don't have
" an extension. pretty sure there is a plugin for this, for a bunch of
" filetype.
function! s:NodeAndTheBang()
  let nodebang = matchstr(getline(1), "^#.*node")
  if nodebang != ''
    set ft=javascript
  endif
endfunction

" call this shebang check on every bufread or newfile
autocmd! BufRead,BufNewFile * call s:NodeAndTheBang()

" remove any trailing whitespace on file save. Yup, I don't like whitespace,
" with these line, I can stop worrying about them.
au BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
