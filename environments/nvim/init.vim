set runtimepath^=~/.config/nvim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim/dein'))

call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/deoplete.nvim')
"call dein#add('zchee/deoplete-clang')
"call dein#add('tweekmonster/deoplete-clang2')
call dein#add('Rip-Rip/clang_complete')
"call dein#add('zchee/deoplete-jedi')
call dein#add('artur-shaik/vim-javacomplete2')
call dein#add('Shougo/neoinclude.vim')
call dein#add('junegunn/fzf')
call dein#add('junegunn/fzf.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('Raimondi/delimitMate')
call dein#add('tikhomirov/vim-glsl')
call dein#add('reedes/vim-colors-pencil')
call dein#add('martinda/Jenkinsfile-vim-syntax')
call dein#add('othree/html5.vim')
call dein#add('jelera/vim-javascript-syntax')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('modille/groovy.vim')
" call dein#add('autozimu/LanguageClient-neovim', {
"     \ 'rev': 'next',
"     \ 'build': 'bash install.sh',
"     \ })

call dein#end()

"" let g:LanguageClient_autoStart = 1
"" let g:LanguageClient_serverCommands = {
""     \ 'javascript': ['javascript-typescript-stdio'],
""     \ 'javascript.jsx': ['javascript-typescript-stdio']
""     \ }
"" 
"" set completefunc=LanguageClient#complete

if dein#check_install()
  call dein#install()
endif


filetype plugin indent on
syntax enable
"syntax off

set re=1

set t_Co=256
set t_ut=

" don't close buffers when switching
set hidden

set wildignore+=*.o,*.so,*.swp,*.zip,*.class,*.jar,node_modules

set rtp+=~/.config/nvim/dein/repos/github.com/junegunn/fzf
nmap <c-p> :FZF --inline-info<CR>
let g:fzf_colors = { 'hl' : ['fg', 'String'], 'hl+' : [ 'fg', 'String' ]}

let g:clang_library_path='/usr/lib/'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_omnicomplete_compliance = 0
let g:clang_make_default_keymappings = 0

"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources#clang#libclang_path = "usr/lib/libclang.so"
"let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"
"let g:deoplete#sources#jedi#show_docstring = 1
"if !exists('g:deoplete#omni#input_patterns')
  "let g:deoplete#omni#input_patterns = {}
"endif
"let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()

"call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy'])
"call deoplete#custom#source('_', 'sorters', ['sorter_word'])

set background=dark
let g:molokai_original = 1
colorscheme molokai
let g:pencil_higher_contrast_ui = 1
let g:pencil_neutral_code_bg = 1
"colorscheme pencil
set colorcolumn=81

set noshowmode
set laststatus=2
set ruler

set cursorline

set splitbelow
set splitright

set hlsearch
map <F4> :nohlsearch<CR>

set nowrap
set number
set relativenumber

set fo+=ro
set fo-=t
set tw=80

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

"noremap <C-c> :bp\|bd #<CR>
"noremap <C-c> :bd<CR>

let delimitMate_expand_cr=1

let indent_guides_enable_on_vim_startup=0
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=NONE

:hi Visual cterm=NONE ctermbg=240 ctermfg=NONE
:hi Search cterm=NONE ctermbg=208 ctermfg=0
:hi Pmenu ctermbg=232 ctermfg=NONE
:hi ErrorMsg ctermbg=0
:hi WildMenu ctermbg=0
:hi IncSearch cterm=NONE ctermfg=208 ctermbg=240

au BufNewFile,BufRead *.vue set filetype=javascript
au BufNewFile,BufRead jenkinsfile set filetype=groovy

noremap <C-6> <C-^>

set ignorecase
set smartcase

set autoread

set fillchars+=vert:\ 

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
