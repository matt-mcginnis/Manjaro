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

"Install vim-latex
Plugin 'vim-latex/vim-latex'

call vundle#end()

" This allows vim to invoke plugins for specific filetypes
filetype plugin on

" This allows vim to invoke indentation for specific filetypes
filetype indent on

" This allows vim to invoke syntax coloring
syntax on

" Settings for all instances of vim
:set number
:set mouse=a
:set backspace=indent,eol,start

" Vim-Latex Settings
let g:tex_flavor='latex'
