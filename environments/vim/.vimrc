call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplete'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mkitt/tabline.vim'
Plug 'moll/vim-node'
Plug 'aklt/plantuml-syntax'
Plug 'mbbill/undotree'
Plug 'junegunn/goyo.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tommcdo/vim-lion'
Plug 'ledger/vim-ledger'

call plug#end()
call ctrlp_bdelete#init()

set re=1 "speeds up regex somewhat by using old engine

"let g:ycm_extra_conf_vim_data = ['&filetype']
"let g:ycm_global_ycm_extra_conf = '~/.vim/_ycm_extra_conf.py'
"let g:ycm_auto_trigger = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_filepath_completion_use_working_dir = 1

" set swp file dir
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/swapfiles//

set wildignore+=*.o,*.so,*.swp,*.zip,*.class,*.jar,node_modules

" don't unload buffers when switching
set hidden

" session conf
set ssop-=options
set ssop-=folds

" gui
"let base16colorspace=256
colorscheme molokai
set background=dark
syntax enable
set colorcolumn=81

" colour current line number
set cursorline 
hi CursorLineNr cterm=none ctermbg=none ctermfg=15
"
"hi Visual term=none cterm=none ctermfg=15 ctermbg=30 guibg=#206090 guifg=#FFFFFF gui=none

set splitbelow
set splitright

" search conf
set hlsearch
map <F4> :nohl<CR>

" always display statusline
set laststatus=2

" syntax
set nowrap
set relativenumber
set number
set guifont=Monospace\ 8
set guioptions-=r "remove right scroll bar
set guioptions-=L "remove left scroll bar
set guioptions-=T "remove tool bar
set guioptions-=m "remove menu bar
set formatoptions+=r
set guioptions-=e

" wrap comments
set fo+=ro
set fo-=t
set tw=80

au BufRead /tmp/mutt-* set tw=72

" indentation
filetype plugin indent on
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

let indent_guides_enable_on_vim_startup=1
let indent_guides_color_change_percent=3

filetype on
filetype plugin on

" set .tex default ft to latex
let g:tex_flavor = "latex"

" show trailing whitespace
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

set backspace=2

" delimitmate conf
let delimitMate_expand_cr=1

" airline conf
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" close current buffer with ctrl+c
noremap <C-c> :bp\|bd #<CR>

" undotree conf
nnoremap <F5> :UndotreeToggle<cr>

" ctrlp conf
let g:ctrlp_switch_buffer = '0'
