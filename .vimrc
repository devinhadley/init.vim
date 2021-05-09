" Python config
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set mouse=a
set autoindent
set backspace=2
set clipboard=unnamedplus
set encoding=utf-8
set noshowmode

" FZF setup
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
map <silent> <C-n> :FZF<CR>

" Install plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'nvie/vim-flake8'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Opens Python linter with ctrl + l
autocmd FileType python map <buffer> <C-l> :call flake8#Flake8()<CR>

syntax enable
set background=dark
colorscheme solarized

" Mac Only (Fixes italics for colorscheme)
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
"Prettier config
packloadall

"Airline Theme
let g:airline_theme='base16'
set t_Co=256

