"Disable scratch preview
call plug#begin('~/.vim/plugged')
"Vim autosave
Plug 'vim-scripts/vim-auto-save'
" Vim Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Linting
Plug 'w0rp/ale'
"Auto Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
" File Sidebar
Plug 'preservim/nerdtree'
" Syntax Highliter
Plug 'sheerun/vim-polyglot'
" Hex color preview
Plug 'ap/vim-css-color'
" Emmet
Plug 'mattn/emmet-vim'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" Pretty Cool Theme
Plug 'sainnhe/sonokai'
" NerdTree Icons
Plug 'ryanoasis/vim-devicons'
"Snippets
Plug 'leafgarland/typescript-vim'
"Plug 'garbas/vim-snipmate'
"Plug 'MarcWeber/vim-addon-mw-utils'
call plug#end()

"~~Theme~~
set termguicolors

let g:lightline = {'colorscheme' : 'sonokai'}
let g:airline_theme = 'sonokai'

" the configuration options should be placed before `colorscheme sonokai`
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai  

"~~Basic Settings~~
syntax on

:set mouse=a
:set cursorline

"tab indentation
:set shiftwidth=2
:set autoindent
:set smartindent

"tab size
:set tabstop=2
:set shiftwidth=2
:set expandtab

"set line numbers
:set number relativenumber

"~~Plugin Conf~~
"ESLINT
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

"Vim autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:auto_save_silent = 1  " do not display the auto-save notification
"~~Key Maps~~
nnoremap <PageUp> :bnext <cr>
nnoremap <PageDown> :bprevious <cr>
nnoremap <Del> :bd <cr>
nnoremap <cr> :w <cr>
"move in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
"nerdTree
nnoremap <space> :NERDTreeToggle <cr> 
"Prettier
nnoremap <cr> :Prettier <cr>
