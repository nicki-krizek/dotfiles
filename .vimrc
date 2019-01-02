set number
set clipboard=unnamed
set wildmode=longest,list
set autoindent

let mapleader=" "

filetype plugin on

autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType lua setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType js setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType md setlocal textwidth=80
autocmd FileType sh setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType rst setlocal foldmethod=manual
autocmd BufWritePost *.py call Flake8()

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized

set scrolloff=8

"custom colors for indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0

" highlight search results
set hls
