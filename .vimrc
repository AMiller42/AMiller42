if &compatible
    set nocompatible
endif

augroup vimStartup
    autocmd!

    autocmd BufReadPost *
      \ let line = line("'\"")
      \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
      \      && index(['xxd', 'gitrebase'], &filetype) == -1
      \ |    execute "normal! g`\""
      \ | endif
augroup END

if &t_Co > 2
    syntax on
endif

set backspace=indent,eol,start

set history=200
set ruler
set showcmd
set wildmenu

set display=truncate
set scrolloff=5

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
