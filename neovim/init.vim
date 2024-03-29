" for line numbers
set nu
" for no compatible mode
set nocp
" turn on syntax highlighting
syntax on
" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set hlsearch
set incsearch
set ignorecase

" for no cursor change after exiting vim
set guicursor=

set listchars=tab:▸\ ,eol:¬

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
call plug#end()

let g:airline_powerline_fonts=1

" Make `coc` choose completion by pressing `enter`
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"