"
" VIM CONFIGURATION ------------------------------------------------------
"
set nocompatible
set cursorline
set nowrap
set tabstop=4
set scrolloff=10

filetype on
filetype plugin on
filetype indent on

syntax on

nore ; :

" To remove the annoying red highlighting in vim when editing i3 config file, remove 
" SynColor Error ctermbg=Red to ctermbg=NONE in folder
" that appears when executing :verbose hi Error inside vim
