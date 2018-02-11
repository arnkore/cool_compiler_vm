set nocompatible
set nu!
filetype on
set history=1000
syntax on
set autoindent
set cindent
set smartindent
set tabstop=4
set shiftwidth =4
set ai!
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set incsearch

set backspace=2
set mouse=a

if has("vms")
    set nobackup
else
    set backup
endif

nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
