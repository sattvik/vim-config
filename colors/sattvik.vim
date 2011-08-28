" Vim color file
" Maintainer: 
" Last Change:  
" URL:		

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="sattvik"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" vim Highlighting Groups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic vim Colour
"hi Normal ctermfg=fg ctermbg=bg

" vimdiff Colours
hi DiffAdd ctermfg=96 ctermbg=233
hi DiffChange ctermfg=0 ctermbg=233
hi DiffDelete ctermfg=24 ctermbg=233
hi DiffText cterm=none ctermfg=167 ctermbg=233

" Messages from vim
hi ErrorMsg ctermfg=89  ctermbg=24
hi ModeMsg cterm=bold ctermfg=168
hi MoreMsg ctermfg=168
hi Question ctermfg=52 ctermbg=168
hi Title cterm=bold ctermfg=167
hi WarningMsg cterm=none ctermfg=35 ctermbg=24

" Column Text
hi FoldColumn ctermfg=176 ctermbg=234
hi SignColumn ctermfg=32 ctermbg=234
hi LineNr ctermfg=149 ctermbg=234

" Search Colours
hi IncSearch cterm=none ctermfg=none ctermbg=53
hi Search cterm=none ctermfg=none ctermbg=53

" Specially displayed characters
hi NonText ctermfg=236 ctermbg=232
hi SpecialKey ctermfg=168

" Window Colours
hi VertSplit cterm=none ctermfg=159 ctermbg=159
hi StatusLine cterm=none ctermfg=45 ctermbg=159
hi StatusLineNC cterm=none ctermfg=235 ctermbg=159
hi WildMenu cterm=none ctermfg=159 ctermbg=45

" Spelling
hi SpellBad cterm=underline ctermfg=24 ctermbg=16
hi SpellCap cterm=underline ctermbg=16
hi SpellRare cterm=bold ctermbg=16
hi SpellLocal cterm=none ctermfg=24 ctermbg=16

" Pop-up menu
hi Pmenu ctermfg=186 ctermbg=179
hi PmenuSel cterm=bold ctermfg=186 ctermbg=179
hi PmenuSbar ctermfg=181 ctermbg=178
hi PmenuThumb ctermfg=182 ctermbg=185

" tab pages
hi TabLine cterm=none ctermfg=155 ctermbg=158
hi TabLineSel cterm=bold ctermfg=155 ctermbg=151
hi TabLineFill cterm=none ctermfg=155 ctermbg=158

" Other Highlighting
hi Folded ctermfg=240 ctermbg=171
hi Visual cterm=none ctermfg=none ctermbg=162
hi VisualNOS cterm=none ctermfg=none ctermbg=153
hi Directory ctermfg=167
hi MatchParen cterm=bold ctermfg=160 ctermbg=168

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Syntax Highlighting Groups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comments
hi Comment ctermfg=0 ctermbg=88

" Constants 
"hi Constant ctermfg=0 ctermbg=162 cterm=bold
hi Constant ctermfg=0 ctermbg=160 cterm=bold
hi String ctermfg=204
hi link Character String
hi Number ctermfg=203
hi link Boolean Number
hi link Float Number

" Identifiers
hi Identifier ctermfg=166
hi Function ctermfg=167

" Statements
hi Statement ctermfg=168
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Keyword Statement
hi link Exception Statement
hi Operator ctermfg=164

" Preprocessor
hi PreProc cterm=bold ctermfg=237
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

" Types
hi Type ctermfg=168
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

" Special stuff.
hi Special ctermfg=32
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

" Miscellaneous
hi Underlined cterm=underline ctermfg=0
hi Ignore ctermfg=234
hi Error ctermfg=0  ctermbg=23
hi Todo ctermfg=23 ctermbg=18


" C/C++ specific
hi link cBracket Operator
hi link cCppBracket Operator
hi link cParen Operator
hi link cCppParen Operator
hi link cBlock Operator
hi cConstant cterm=bold ctermfg=204

" XML specific
hi link xmlEndTag Type
hi link xmlTagName Type
hi link xsdElement Type

" diff specific
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete
hi link diffChanged DiffText
hi diffLine ctermfg=149
hi diffFile ctermbg=161 ctermfg=168
 " todo 
hi diffSubname ctermbg=23

" TagList highlighting
hi MyTagListFileName ctermfg=0 ctermbg=161
hi MyTagListTitle cterm=NONE ctermfg=163
hi MyTagListTagScope cterm=NONE ctermfg=164
hi MyTagListTagName ctermbg=52

" Mail highlighting
hi mailQuoted1 ctermfg=168 ctermbg=161
hi mailQuoted2 ctermfg=186 ctermbg=179
hi mailQuoted3 ctermfg=204 ctermbg=197
hi mailQuoted4 ctermfg=222 ctermbg=215
hi mailQuoted5 ctermfg=24 ctermbg=17
hi mailQuoted6 ctermfg=42 ctermbg=35


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Javadoc Highlighting                                                     
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic comment colour
hi link javaDocComment Comment
" colour for summary lines and parameters to tags
hi javaCommentTitle ctermfg=96 ctermbg=88
hi link javaDocParam javaCommentTitle
" colour for Javadoc tags
hi javaDocTags cterm=none ctermfg=96 ctermbg=88

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Doxygen Highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Standard comment colour
hi link doxygenSpecialSectionDesc Comment
hi link doxygenSpecialMultilineDesc Comment

" Highlighting for brief comments
hi doxygenComment cterm=none ctermfg=96 ctermbg=88
hi link doxygenBrief doxygenComment
hi link doxygenSpecialOnelineDesc doxygenComment

" Special highlighting for eye-catching things
hi doxygenTODO cterm=bold ctermfg=24 ctermbg=61
hi link doxygenOtherTODO doxygenTODO
hi link doxygenOtherWARN doxygenTODO
hi link doxygenOtherBUG doxygenTODO

" highlighting for special CVS comments
hi doxygenCVS ctermfg=236 ctermbg=88

" Used for special one line descriptions, such as a group name
hi doxygenSpecialTypeOnelineDesc cterm=bold ctermfg=92 ctermbg=88

" code text
hi doxygenCodeWord cterm=bold ctermfg=86 ctermbg=88
hi link doxygenCodeRegion doxygenCodeWord
hi doxygenHtmlCode cterm=bold ctermfg=86 ctermbg=61

hi doxygenSpecial cterm=none ctermfg=102 ctermbg=88
hi link doxygenVerbatimRegionSpecial doxygenSpecial
hi link doxygenSymbol doxygenSpecial

hi doxygenParam cterm=none ctermfg=104 ctermbg=88
hi link doxygenBOther doxygenParam
hi link doxygenSmallSpecial doxygenParam

" forumula highlighting
hi doxygenFormula cterm=none ctermfg=0 ctermbg=115
hi doxygenFormulaSpecial cterm=none ctermfg=122 ctermbg=115
hi doxygenFormulaKeyword cterm=bold ctermfg=123 ctermbg=115
hi doxygenFormulaOperator cterm=none ctermfg=118 ctermbg=115

hi doxygenParamName cterm=bold ctermfg=103 ctermbg=88
hi doxygenVerbatimRegion ctermfg=240 ctermbg=88
hi doxygenBoldWord cterm=bold ctermfg=0 ctermbg=88

" HTML highlighting
hi doxygenHtmlCmd cterm=none ctermfg=69 ctermbg=61
hi doxygenHtmlCh cterm=none ctermfg=65 ctermbg=61

"hi doxygenLinkWord cterm=none ctermfg=94 ctermbg=88

"unknown
hi doxygenPrev cterm=bold ctermfg=0 ctermbg=3
hi doxygenEmphasisedWord cterm=bold ctermfg=0 ctermbg=4
hi doxygenOtherLink cterm=bold ctermfg=0 ctermbg=6
hi doxygenGroupName cterm=bold ctermfg=0 ctermbg=7
