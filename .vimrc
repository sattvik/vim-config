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
""" Set leader
"""

let mapleader=","
let maplocalleader=","
noremap \ ,

"""
""" My bundles
"""

" Align
Bundle 'Align'

" C++11 support
"Bundle 'vim-cpp-enhanced-highlight'

" clang_complete
let s:which_clang=system('which clang')
if match(s:which_clang, '/') != -1
  Bundle 'Rip-Rip/clang_complete'
  let g:clang_auto_select=1
  let g:clang_complete_auto=0
  let g:clang_complete_copen=1
  let g:clang_periodic_quickfix=0
  let g:clang_snippets=0
  let g:clang_close_preview=1
  let g:clang_use_library=1
  let s:os_type=system('uname -s')
  if match(s:os_type, 'Linux') == 0
    let g:clang_library_path='/usr/lib64'
  elseif match(s:os_type, 'Darwin') == 0
    let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
  endif
  unlet s:os_type
  let g:clang_complete_macros=1
  let g:clang_complete_patterns=1
  let g:clang_auto_user_options="compile_commands.json, .clang_complete, path"
  nmap <silent> <leader>qq :call g:ClangUpdateQuickFix()<CR>
endif
unlet s:which_clang

" Ctrl-P
Bundle 'kien/ctrlp.vim'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'
nmap <silent> <leader>lr :CtrlPCurFile<CR>
nmap <silent> <leader>lb :CtrlPBuffer<CR>

" Add projectionist + dispatch
Bundle 'tpope/vim-projectionist'
nmap <silent> <leader>is :A<CR>
imap <silent> <leader>is <ESC>:A<CR>
let g:projectionist_heuristics = {
	\  "*": {
	\    "*.cpp": {
	\      "alternate": "{}.h"
	\    },
	\    "*.h": {
	\      "alternate": "{}.cpp"
	\    }
	\  }
	\}
Bundle 'tpope/vim-dispatch'

" Clojure support
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-highlight'
Bundle 'guns/vim-clojure-static'
Bundle 'kovisoft/slimv'
let g:slimv_disable_clojure = 1
let g:paredit_smartjump = 1

"" Dart support
"Bundle 'dart-lang/dart-vim-plugin'

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
let g:localvimrc_whitelist = '\v/.*/(corelibs|iPick)/.*'

" Markdown
Bundle 'tpope/vim-markdown'
let g:markdown_fenced_languges=['clojure']

" NERD commentor
Bundle 'scrooloose/nerdcommenter'
" Make Ctrl-/ toggle comments with NERD commenter
nmap <silent> <C-_> :call NERDComment(0, "toggle")<cr>
vmap <silent> <C-_> :call NERDComment(1, "toggle")<cr>

" vim-airline, powerline replacement
Bundle 'bling/vim-airline'
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
set laststatus=2
set ttimeoutlen=50

"" QMake syntax
"Bundle 'sattvik/qmake-syntax-vim'

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
  au VimEnter *.clj,*.cljs RainbowParenthesesActivate
  au BufEnter *.clj,*.cljs RainbowParenthesesLoadRound
  au BufEnter *.clj,*.cljs RainbowParenthesesLoadSquare
  au BufEnter *.clj,*.cljs RainbowParenthesesLoadBraces
augroup END

"" Scala
"Bundle 'derekwyatt/vim-scala'

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
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabLongestEnhanced=1
let g:SuperTabLongestHighlight=1

"" todo.txt
"Bundle 'freitass/todo.txt-vim'

"" UniCycle
"Bundle 'UniCycle'

" Unix support
Bundle 'tpope/vim-eunuch'

" VimOutliner
Bundle 'vimoutliner/vimoutliner'

""VimRepress
"Bundle 'VimRepress'

" WM Graphviz
Bundle 'wmgraphviz'
let g:WMGraphviz_output="png"

" XML Edit
Bundle 'sukima/xmledit'
let g:xml_jump_string="¦"

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

if match($SHELL, 'lzsh$') != -1
  set shellpipe=2>&1\|\ tee
end

syntax enable
filetype plugin indent on

" C options
let c_space_errors = 1

" Terminal settings
if &term =~ "screen" && $TMUX != ""
  set t_ts=]2;
  set t_fs=\
endif

set <S-F1>=[1;2P
set <S-F2>=[1;2Q
set <S-F3>=[1;2R
set <S-F4>=[1;2S
set <S-F5>=[15;2~
set <S-F6>=[17;2~
set <S-F7>=[18;2~
set <S-F8>=[19;2~
set <S-F9>=[20;2~
set <S-F10>=[21;2~
set <S-F11>=[23;2~
set <S-F12>=[24;2~

" Ctrl(-Shift)?-[F1-F12]
set <F13>=[1;5P
set <S-F13>=[1;6P
set <F14>=[1;5Q
set <S-F14>=[1;6Q
set <F15>=[1;5R
set <S-F15>=[1;6R
set <F16>=[1;5S
set <S-F16>=[1;6S
set <F17>=[15;5~
set <S-F17>=[15;6~
set <F18>=[17;5~
set <S-F18>=[17;6~
set <F19>=[18;5~
set <S-F19>=[18;6~
set <F20>=[19;5~
set <S-F20>=[19;6~
set <F21>=[20;5~
set <S-F21>=[20;6~
set <F22>=[21;5~
set <S-F22>=[21;6~
set <F23>=[23;5~
set <S-F23>=[23;6~
set <F24>=[24;5~
set <S-F24>=[24;6~

" Alt(-Shift)?-[F1-F12]
set <F25>=[1;3P
set <S-F25>=[1;4P
set <F26>=[1;3Q
set <S-F26>=[1;4Q
set <F27>=[1;3R
set <S-F27>=[1;4R
set <F28>=[1;3S
set <S-F28>=[1;4S
set <F29>=[15;3~
set <S-F29>=[15;4~
set <F30>=[17;3~
set <S-F30>=[17;4~
set <F31>=[18;3~
set <S-F31>=[18;4~
set <F32>=[19;3~
set <S-F32>=[19;4~
set <F33>=[20;3~
set <S-F33>=[20;4~
set <F34>=[21;3~
set <S-F34>=[21;4~
set <F35>=[23;3~
set <S-F35>=[23;4~
set <F36>=[24;3~
set <S-F36>=[24;4~

" F2 and S-F2 go to next/previous quickfix
nmap <silent> <F2> :cn<cr>
nmap <silent> <S-F2> :cp<cr>

" Make hotkeys
nmap <silent> <F21>   :Make<cr>
nmap <silent> <S-F21> :Dispatch<cr>
nmap <silent> <S-F22> :Start<cr>

" C/C++ syntax
let c_space_errors = 1

" Undo persistence
set undofile
au BufWritePre /tmp/* setlocal noundofile
