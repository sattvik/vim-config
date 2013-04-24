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
set foldlevelstart=99
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

set background=dark
colorscheme solarized

" C options
let c_space_errors = 1

" WM Graphviz
let g:WMGraphviz_output="png"

" GnuPG plugin
let g:GPGUsePipes=1

" Supertab
let g:SuperTabDefaultCompletionType="<c-x><c-o>"
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1

" LaTeX-suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'xelatex -shell-escape -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'

" Make Ctrl-/ toggle comments with NERD commenter
nmap <silent> <C-_> :call NERDComment(0, "toggle")<cr>
vmap <silent> <C-_> :call NERDComment(1, "toggle")<cr>

" Make F2 and S-F2 go to next/previous quickfix
nmap <silent> <F2> :cn<cr>
nmap <silent> <S-F2> :cp<cr>

nmap <silent> <F9>  :mak<cr>
nmap <silent> <F10> :mak check<cr>

nmap <silent> <F8> :TagbarToggle<CR>

"Powerline
let Powerline_symbols='unicode'
let Powerline_colorscheme='solarized16'
set laststatus=2

" Rainbow parentheses
let g:rbpt_colorpairs = [
	\ [ '13', '#6c71c4'],
	\ [ '5',  '#d33682'],
	\ [ '1',  '#dc322f'],
	\ [ '9',  '#cb4b16'],
	\ [ '3',  '#b58900'],
	\ [ '2',  '#859900'],
	\ [ '6',  '#2aa198'],
	\ [ '4',  '#268bd2'],
	\ ]
"let g:rbpt_max = 8

augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
augroup END

" Lusty juggler
let g:LustyJugglerShowKeys = 'a'

" clang-complete
let g:clang_auto_select=1
let g:clang_close_preview=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_periodic_quickfix=0
let g:clang_use_library=1
let g:clang_library_path='/usr/lib64/llvm'
nmap <silent> <leader>qq :call g:ClangUpdateQuickFix()<CR>

" LocalVim
let g:localvimrc_sandbox = 0

" Ctrl-P
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['.clang_complete']
