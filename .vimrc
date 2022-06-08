set number
set clipboard=unnamed
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
autocmd BufWritePost *.py call Flake8()

" project-specific settings
autocmd BufNewFile,BufRead /home/tkrizek/git/dnsjit/* set tabstop=4 shiftwidth=4 expandtab

"remove whitepaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

syntax enable

set scrolloff=8
set nojoinspaces

"custom colors for indent-guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0

" highlight search results
set hls

" key bindings
map <F10> :Black <enter>
map <F11> :Mypy <enter>
