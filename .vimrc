set number
set clipboard=unnamedplus
set wildmode=longest,list
set autoindent

let mapleader=" "

filetype plugin on

set tabstop=8 shiftwidth=8
set list
set listchars=tab:\|\ ,

autocmd FileType ruby setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType meson setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType js setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType markdown setlocal textwidth=80
autocmd FileType sh setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType rst setlocal foldmethod=manual

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

syntax enable

set scrolloff=8
set nojoinspaces

colorscheme torte

" highlight search results
set hls

" key bindings
set pastetoggle=<F3>
map <F10> :Black <enter>
map <F11> :Mypy <enter>

" project-specific settings
autocmd BufNewFile,BufRead /home/tkrizek/git/dnsjit/* setlocal tabstop=4 shiftwidth=4 expandtab
autocmd BufNewFile,BufRead tests.sh setlocal tabstop=8 shiftwidth=8
