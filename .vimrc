" Plugins
" ================

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'vim-airline/vim-airline'

call plug#end()

" ================
" Shortcuts
" ================

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>

" =========================
" Main Settings
" =========================
" Encoding
" =========================

set encoding=utf-8
set fileencoding=utf-8

set nocompatible
filetype plugin indent on

" =========================
" Display Settings
" =========================

set relativenumber
set number
set numberwidth=1

highlight LineNr ctermfg=NONE guifg=NONE  " Отключаем цвет для номеров строк
highlight CursorLineNr ctermfg=NONE guifg=NONE  " Отключаем цвет для текущего номера строки

syntax on " turn on syntax highlight

set background=dark " dark theme

set noshowmode

set termguicolors

set guifont=CaskadiyaMonoNerdFont  " font 

" =========================
" Tabulation Settings
" =========================

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab
set smartindent

" ========================
" Security
" ========================

set modelines=0

" ========================
" Performance
" ========================

set backspace=indent,eol,start
set nowrap
set ruler
set mouse=a

" =====================
" Auto Commands
" ========================
" =====================

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" NERDTree Auto Commands

" Auto close
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" =======================
" Search Settings
" =======================

set hlsearch
set incsearch
set ic
set smartcase

" ===================
" Disable beep
" ===================

set vb
set t_vb=

" =================
" AirLine Setup
" =================

let g:airline_theme = 'catppuccin_mocha'

" Turning off arrow keys 

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

noremap! <Up> <NOP>
noremap! <Down> <NOP>
noremap! <Left> <NOP>
noremap! <Right> <NOP>

