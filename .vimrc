set number
set clipboard=unnamed
set wildmode=longest,list

autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 expandtab

execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized
