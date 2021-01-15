" VIM CONF Fri Jan 15 13:48:31 EET 2021 

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ruler   		    " get the position where the cursor is 
set ai              " Auto indent
set si              " Smart indent
set wrap            " Wrap lines 

set relativenumber
colorscheme peachpuff " desert 

highlight Comment ctermfg=green

" :W sudo saves the file 
" " (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

set history=200 


" Map the keys for quicker navigation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>



" Execute python file

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!clear;python3' shellescape(@%, 1)<CR>


cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'


nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j



let mapleader=","
noremap \ ,

nnoremap <Leader><space> :noh<cr>


" Plugins
runtime macros/matchit.vim

set undofile " It persists undo history between vim invocations

  
