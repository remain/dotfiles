set encoding=utf-8

command! Cp932 edit ++enc=cp932
command! Sjis Cp932

set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=4

set autoindent
set smartindent

set backspace=indent,eol,start

set nowrap

autocmd QuickFixCmdPost *grep* cwindow
