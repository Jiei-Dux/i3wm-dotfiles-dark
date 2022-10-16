"
" VIM CONFIGURATION ------------------------------------------------------
"
set nocompatible
set nowrap
"set tabstop=2
set scrolloff=10
set cursorline
set background=dark
set mouse=a

filetype on
filetype plugin on
filetype indent on

syntax enable
hi Error ctermbg=NONE

nore ; :

"autocmd BufReadPost *.doc silent %!antiword "%"
"autocmd BufReadPost *.odt,*.odp silent %!odt-1txt "%"
"autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78
"autocmd BufReadPost *.rtf silent %!unrtf --text "%"




"
" VIM VUNDLE PLUGINS ----------------------------------------------------
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	
	Plugin 'jiangmiao/auto-pairs'
	
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
