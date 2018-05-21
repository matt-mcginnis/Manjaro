"########################################
"########## Matt's .vimrc File ##########
"########################################

set nocompatible	" (required)
filetype off		" (required)

" Set the runtime path to include vundle and initialize it.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let vundle manage vundle (required).
Plugin 'VundleVim/Vundle.vim'

"Install ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

"Install emmet
Plugin 'mattn/emmet-vim'

"Install ultisnips
Plugin 'SirVer/ultisnips'
"Install the actual snippets
Plugin 'honza/vim-snippets'

"Install vim-latex
Plugin 'vim-latex/vim-latex'

"Install YCM
"Be sure to navigate to ~/.vim/bundle/YouCompleteMe
"and run 'python install.py'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" This allows vim to invoke plugins for specific filetypes
filetype plugin on

" This allows vim to invoke syntax coloring
syntax on

" Settings for all instances of vim
:set number
:set mouse=a
:set backspace=indent,eol,start

" Vim-Latex Settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:tex_CompileRule_pdf='pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf='zathura'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Ultisnippets Settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

