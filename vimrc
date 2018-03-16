""" Vundle Entries
set nocompatible               " be iMproved
filetype off                   " required!

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required!
Plugin 'gmarik/vundle'

Plugin 'whatyouhide/vim-gotham'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'ddollar/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'burnettk/vim-angular'
Plugin 'vivien/vim-linux-coding-style'

Plugin 'majutsushi/tagbar'
  nmap <F4> :TagbarToggle<CR>

Plugin 'airblade/vim-gitgutter'
  let g:gitgutter_sign_column_always = 0

Plugin 'vim-scripts/The-NERD-tree'
  map <F3> :NERDTreeToggle<CR>
  let NERDTreeWinPos = 'left'
  let NERDTreeIgnore = ['\.pyc$']

" YouCompeleteMe requires vim 7.3+
" Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'

Plugin 'kien/ctrlp.vim'
  let g:ctrlp_working_path_mode = 0 " dont manage working directory.
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v\c\.(git|svn)$',
  \ 'file': '\v\c\.(swf|bak|png|gif|mov|ico|jpg|pdf|pyc)$',
  \ }

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  let g:airline_theme             = 'luna'
  let g:airline_powerline_fonts = 1

" lang specific modules
Plugin 'c9s/perlomni.vim'
Plugin 'cakebaker/scss-syntax.vim'

Plugin 'luochen1990/rainbow'
  let g:rainbow_active = 1
  let g:rainbow_conf = {
  \ 'guifgs':   ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
  \ 'ctermfgs': ['red', 'green', 'yellow', 'blue']
  \ }

Plugin 'vim-scripts/closetag.vim'

" Debuggers
Plugin 'joonty/vdebug.git'

call vundle#end()

filetype plugin indent on     " required!

""" vimrc resumes
set shell=bash
set autoindent
set backspace=indent,eol,start
set nowrap

" display relative line numbers
set rnu
" display absolute line number for current line
set nu

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set ruler
set scrolloff=5
set cmdheight=2
set cursorcolumn
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,trail:-,eol:¬
set expandtab
set shiftwidth=4
set smarttab
set cindent
"set smartindent
set showcmd
set showmatch
set t_Co=256
:
set tags=tags;/
set virtualedit=block
set mouse=a
set ttymouse=xterm2
set backupdir=~/.vim_backup
set wildmenu
set wildignore=*.exe,*.dll,*.o,*.so,*.pyc,*.back,*.jpg,*.jpeg,*.png,*.gif,*.pdf
set wildmode=list:full
set colorcolumn=120
set langmenu=en_US.UTF-8

set guioptions-=T
set guioptions-=m
set guioptions-=r " Removes right hand scroll bar
set guioptions-=L
set mousemodel=popup

set clipboard=unnamed

set fillchars+=vert:\ 

syntax on
colorscheme gotham256 

hi colorColumn ctermbg=1

" :help last-position-jump
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

nnoremap <C-L> :noh<CR><C-L>
inoremap jj <Esc>
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader><Leader>r :e ~/.vimrc<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gm :Gcommit --amend<CR>
map <Leader>gll :Git log<CR>
map <Leader>glp :Git log -p<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gdd :Git diff<CR>
map <Leader>gdm :Git diff %<CR>
map <Leader>gdf :Gdiff<CR>
map <Leader>gg :Git 

map <Enter> i

nmap <F1> <Esc>
imap <F1> <Esc>

nnoremap <C-S-K> :m .-2<CR>==
nnoremap <C-S-J> :m .+1<CR>==
inoremap <C-S-J> <Esc>:m .+1<CR>==gi
inoremap <C-S-K> <Esc>:m .-2<CR>==gi
vnoremap <C-S-K> :m '<-2<CR>gv=gv
vnoremap <C-S-J> :m '>+1<CR>gv=gv

" Map <Ctrl+N> to toggle relative line numbers
nmap <C-N> :set invrnu<CR>

" switch the line-number style, in normal mode, and insert mode
au FocusLost * :set number
au FocusGained * :set relativenumber
au InsertEnter * :set number
au InsertLeave * :set relativenumber

" Use F2 to toggle set paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

if has("gui_running")
  colorscheme gotham
  if has("gui_gtk2")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
  elseif has("gui_macvim")
    set guifont=Source\ Code\ Pro\ for\ Powerline:h15
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" map ctrl+v as paste in Insert mode
" borrowed from: http://superuser.com/a/189198
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
