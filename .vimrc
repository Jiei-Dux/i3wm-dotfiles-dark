"
" VIM CONFIGURATION ------------------------------------------------------
"
set nowrap
set tabstop=2
set scrolloff=10
set cursorline
#set cursorcolumn
set background=dark


filetype plugin on
filetype indent on

syntax enable
hi Error ctermbg=NONE

nore ; :


"
" VIM PLUGIN MANAGER -----------------------------------------------------
"
set nocompatible              " be iMproved, required
filetype on                  " required


"
" VIM VUNDLE PLUGINS ----------------------------------------------------
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required


" No Need for this but keeping it here just in case lol
" To remove the annoying red highlighting in vim when 
" editing i3 config file, change 
" SynColor Error ctermbg=Red to ctermbg=NONE in folder
" that appears when executing :verbose hi Error inside vim
