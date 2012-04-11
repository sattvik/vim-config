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

let mapleader=","
let maplocalleader=","

syntax enable
filetype plugin indent on 

colorscheme sattvik

" C options
let c_space_errors = 1

" WM Graphviz
let g:WMGraphviz_output="png"

" GnuPG plugin
let g:GPGUsePipes=1

" Supertab
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1

" LaTeX-suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'xelatex -shell-escape -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'

" Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1

" Make Ctrl-/ toggle comments with NERD commenter
nmap <silent> <C-_> :call NERDComment(0, "toggle")<cr>
vmap <silent> <C-_> :call NERDComment(1, "toggle")<cr>

" VimClojure settings
let g:vimclojure#WantNailgun = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#DynamicHighlighting = 1
let g:vimclojure#SplitPos = "bottom"
let g:vimclojure#SplitSize = 10
let g:vimclojure#FuzzyIndent = 1

" Make F2 and S-F2 go to next/previous quickfix
nmap <silent> <F2> :cn<cr>
nmap <silent> <S-F2> :cp<cr>

nmap <silent> <F9>  :mak<cr>
nmap <silent> <F10> :mak check<cr>

nmap <silent> <F8> :TagbarToggle<CR>

"Powerline
let Powerline_symbols='unicode'
let Powerline_colorscheme='sattvik'
set laststatus=2


" Lusty juggler
let g:LustyJugglerShowKeys = 'a'

" clang-complete
let g:clang_auto_select=1
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=0
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
nmap <silent> <leader>qq :call g:ClangUpdateQuickFix()<CR>

" LocalVim
let g:localvimrc_sandbox = 0

" Taglist
let Tlist_Inc_Winwidth=0
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_Use_Right_Window=1
let Tlist_Enable_Fold_Column=0
nmap <silent> <F12> :TlistToggle<CR>
