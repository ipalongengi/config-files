call plug#begin('~/.config/nvim/bundle')

Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'euclio/vim-markdown-composer'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'anyakichi/vim-surround'
Plug 'w0rp/ale'
"Plug 'SirVer/ultisnips'

call plug#end()

colo badwolf
set ts=8 et sw=4 sts=4
syntax on
set background=dark
filetype indent on
set number
set hidden

"Buffer Navigation
map <C-j> :e 
map <silent><C-k> :bd! <CR>
map <silent><C-h> :bp! <CR>
map <silent><C-l> :bn! <CR>

"Tabularize at = hotkey
map <S-t> :Tabularize /= <CR>

set inccommand=nosplit

" Remove highlighting after search
map <silent><C-n> :nohlsearch <CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
