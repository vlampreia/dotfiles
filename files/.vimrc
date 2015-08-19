call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplete'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'szw/vim-ctrlspace'
Plug 'tpope/vim-fugitive'
"Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" set swp file dir
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/swapfiles//

" gui
let base16colorspace=256
colorscheme molokai
set background=dark
syntax enable

" syntax

set nowrap
set number
set guifont=Monospace\ 8
set guioptions-=r "remove right scroll bar
set guioptions-=L "remove left scroll bar
set guioptions-=T "remove tool bar
set guioptions-=m "remove menu bar
set formatoptions+=r
set guioptions-=e

set wildignore+=*.so,*.swp,*.zip,*.class,*.jar,node_modules

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype plugin indent on

let indent_guides_enable_on_vim_startup=1
let indent_guides_color_change_percent=3

filetype on
filetype plugin on

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

let delimitMate_expand_cr=1

set laststatus=2

set ssop-=options
set ssop-=folds

let g:ctrlspace_use_tabline = 1
let g:ctrlspace_save_workspace_on_exit = 1

let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 1
set hidden

"tab shift
vmap <Tab> >gv
vmap <S-Tab> <gv

noremap <C-c> :bp\|bd #<CR>

":nnoremap <C-Left> :tabprevious<CR>
":nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" colour current line number
set cursorline 
hi CursorLineNr cterm=none ctermbg=none ctermfg=15

set splitbelow
set splitright

hi Visual guibg=#303030 guifg=#FFFFFF gui=none
