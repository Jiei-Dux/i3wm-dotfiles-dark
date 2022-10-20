"
" VIM CONFIGURATION ------------------------------------------------------
"
	
	set cursorline
	set background=dark
	set expandtab		" Use spaces when tabbing instead of \t
	set incsearch		" Enable incremental search
	set hlsearch		" Enable highlight search
	set mouse=a
	set nocompatible
	set nu				" Enable Line Numbers
	set scrolloff=10
	set shiftwidth=4	" Something, I dont know what this do...
	set tabstop=4		" 4 columns of whitespace
	

	filetype on
	filetype plugin on
	filetype indent on

	syntax enable

	hi Error ctermbg=NONE

	let g:AutoPairsShortcutToggle = '<C-P>'		" Makes Auto-Pairs Plugin Togglable using Ctrl+P




"	
" VIM VUNDLE PLUGINS ----------------------------------------------------
"
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

		Plugin 'VundleVim/Vundle.vim'
	
		Plugin 'jiangmiao/auto-pairs'
		Plugin 'sheerun/vim-polyglot'

	
	call vundle#end()            " required
	filetype plugin indent on    " required




"
" VIM-VISUAL-MULTI ------------------------------------------------------
"
	let g:VM_mouse_mappings    = 1   
	let g:VM_theme             = 'iceblue'    
	let g:VM_maps = {}  
	let g:VM_maps["Undo"]      = 'u' 
	let g:VM_maps["Redo"]      = '<C-r>'




"
" VIM-KEY-MAPPINGS ------------------------------------------------------
"
	
