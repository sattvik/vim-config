"""
""" vundle init
"""

" Necessary for vundle setup
set nocompatible
filetype off

" Add vundle to path
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" Allow vundle to manage itself
Bundle 'gmarik/vundle'

"""
""" My bundles
"""

" a.vim
Bundle 'a.vim'

" Align
Bundle 'Align'

" C++11 support
Bundle 'vim-cpp-enhanced-highlight'

" clang_complete
Bundle 'Rip-Rip/clang_complete'
let g:clang_auto_select=1
let g:clang_close_preview=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=1
let g:clang_periodic_quickfix=0
let g:clang_use_library=1
let g:clang_library_path='/usr/lib64/llvm'
nmap <silent> <leader>qq :call g:ClangUpdateQuickFix()<CR>

" Ctrl-P
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['.clang_complete']

" Fireplace (Clojure support)
Bundle 'tpope/vim-fireplace'

" Fugitive (Git suport)
Bundle 'tpope/vim-fugitive'

" GnuPG
Bundle 'embear/vim-gnupg'
let g:GPGUsePipes=1

" LaTeX-suite
Bundle 'http://git.code.sf.net/p/vim-latex/vim-latex'
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'xelatex -shell-escape -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'

" LocalVim
Bundle 'localvimrc'
let g:localvimrc_sandbox = 0

" Lusty juggler
Bundle 'sjbach/lusty'
let g:LustyJugglerShowKeys = 'a'

" Markdown
Bundle 'tpope/vim-markdown'

" NERD commentor
Bundle 'scrooloose/nerdcommenter'
" Make Ctrl-/ toggle comments with NERD commenter
nmap <silent> <C-_> :call NERDComment(0, "toggle")<cr>
vmap <silent> <C-_> :call NERDComment(1, "toggle")<cr>

" Powerline
Bundle 'Lokaltog/vim-powerline'
let Powerline_symbols='unicode'
let Powerline_colorscheme='solarized16'
set laststatus=2

" QMake syntax
Bundle 'sattvik/qmake-syntax-vim'

" Rainbow parentheses
Bundle 'kien/rainbow_parentheses.vim'
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

augroup rainbow_parentheses
  au!
  au VimEnter * RainbowParenthesesActivate
  au BufEnter * RainbowParenthesesLoadRound
  au BufEnter * RainbowParenthesesLoadSquare
  au BufEnter * RainbowParenthesesLoadBraces
augroup END

" Scala
Bundle 'derekwyatt/vim-scala'

" SlimV
Bundle 'slimv.vim'

" Solarized
Bundle 'altercation/vim-colors-solarized'
set background=dark
let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_visibility='low'
colorscheme solarized

" Supertab
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType="<c-x><c-o>"
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1

" UniCycle
Bundle 'UniCycle'

" Unix support
Bundle 'tpope/vim-eunuch'

" VimOutliner
Bundle 'vimoutliner/vimoutliner'

" WM Graphviz
Bundle 'wmgraphviz'
let g:WMGraphviz_output="png"

" XML Edit
Bundle 'sukima/xmledit'
let g:xml_jump_string="`"

"""
""" General Vim configuration
"""
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

" C options
let c_space_errors = 1

" F2 and S-F2 go to next/previous quickfix
nmap <silent> <F2> :cn<cr>
nmap <silent> <S-F2> :cp<cr>

" Make hotkeys
nmap <silent> <F9>  :mak<cr>
nmap <silent> <F10> :mak check<cr>
