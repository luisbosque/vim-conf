let mapleader = ","

set nocompatible               " be iMproved


set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent
au BufRead,BufNewFile *.fab setfiletype python
au BufRead,BufNewFile *.py.erb set ft=python

set rnu


filetype off                   " required!

" Move between splits
nn <C-h> <C-w>h
nn <C-j> <C-w>j
nn <C-k> <C-w>k
nn <C-l> <C-w>l

" Switch between buffers
nmap <tab> <C-w><C-w>

"augroup CommandTExtension
"  autocmd!
"  autocmd FocusGained * CommandTFlush  
"  autocmd BufWritePost * CommandTFlush
"augroup END


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()



" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\.orig$']
map <C-x> :NERDTreeToggle<CR>

Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/taglist.vim'
map <leader>rt :!ctags --extra=+f -R *<CR><CR>
map <leader>tt :TlistToggle<CR>

Bundle 'scrooloose/syntastic'

"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"

"Terminal defaults
syntax enable
set t_Co=256
set background=dark
"

"set term=screen-256color
"let g:molokai_original=0
"colorscheme molokai
"
colorscheme symfony

" Solarized
"let g:solarized_termcolors=256
"colorscheme solarized
"
