set number
set clipboard=unnamed
set wildmode=longest,list
set autoindent

let mapleader=" "

autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType md setlocal textwidth=80
autocmd BufWritePost *.py call Flake8()

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized
