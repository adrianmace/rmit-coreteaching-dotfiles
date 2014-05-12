"""""""""""""""""""""
"=> General
"""""""""""""""""""""
set history=100
set autoread

"""""""""""""""""""""
"=> Interface
"""""""""""""""""""""
syntax on
set background=dark
set ruler
set statusline=\%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set laststatus=2

"""""""""""""""""""""
"=> Tabs and Indent
"""""""""""""""""""""
filetype indent plugin on
set autoindent
set si
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set whichwrap+=<,>,[,]
set backspace=2
set lbr
set tw=80

"""""""""""""""""""""
"=> Search
"""""""""""""""""""""
set hlsearch
set incsearch
set number
