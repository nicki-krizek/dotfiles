set number
set clipboard=unnamed
set wildmode=longest,list
set autoindent

autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized
