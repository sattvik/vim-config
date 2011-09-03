" Init and call pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" General Vim settings
set autoindent
set backspace=indent,eol,start
set nocompatible
set completeopt=menu,preview,longest
set encoding=utf-8
set noexpandtab
set fileencoding="utf-8"
set foldmethod=syntax
set hidden
set history=1024
set nohlsearch
set incsearch
set ruler
set shellslash
set shiftwidth=2
set showcmd
set spellfile=.vimspell.utf8.add,$HOME/.vim/vimspell.utf8.add
set spelllang=en_gb
set tabstop=8
set title
set wildmenu

let mapleader=",,"
let maplocalleader=",,"

syntax enable
filetype plugin indent on 

colorscheme sattvik

" WM Graphviz
let g:WMGraphviz_output="png"

" GnuPG plugin
let g:GPGUsePipes=1

" Supertab
let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabDefaultCompletionTypeDiscovery = [
"      \ "&completefunc:<c-x><c-u>",
"      \ "&omnifunc:<c-x><c-o>",
"      \ ]
"let g:SuperTabLongestHighlight=1
