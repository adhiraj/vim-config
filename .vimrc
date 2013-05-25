filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

" Tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

" Other embellishments
set showmode
set ruler
set relativenumber
set undofile

set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase
set gdefault

nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81
set autoindent
set smartindent

" Panes
let g:dwm_master_pane_width=85

" Navigate wrapped-around lines hassle-free
nnoremap <down> gj
nnoremap <up> gk

" Look and feel
set bg=dark
set guifont=Menlo:h14
colorscheme Tomorrow-Night

" Shift hjkl to the right
nmap j <left>
nmap k <down>
nmap l <up>
nmap ; <right>
xmap j <left>
xmap k <down>
xmap l <up>
xmap ; <right>

" Purge search highlights on pressing enter
nnoremap <CR> :noh<CR><CR>

syntax on

au FileType python setl sw=4 ts=4 sts=4

" Change directory to current file's
map <leader>cd :cd %:p:h<CR>

" Strip trailing whitespace from lines
fun! <SID>StripTrailingWhitespaces()
      let l = line(".")
      let c = col(".")
      %s/\s\+$//e
      call cursor(l, c)
endfun
