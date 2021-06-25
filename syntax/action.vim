" Vim syntax file
" Language:	Action! by OSS/ICD/FtE
" By: Brian Manning <devspam@xaoc.org>
" Creation date: 2021-June-15
" Version 0.01

" This file uses implementation ideas from:
" - Language:     MOS 6502 assembler
"   - https://www.vim.org/scripts/script.php?script_id=1314
" - Language:      Perl 5
"   - https://github.com/vim-perl/vim-perl

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Remove any old syntax stuff hanging about
syn clear
syn case ignore

" Statements 
" syn keyword {group name}
" - "group name" can be listed multiple times with different commands
" - commands can be members of multiple groups
" - https://vimhelp.org/syntax.txt.html#%3Asyn-define
syn keyword actStatement array byte card char define include int
syn keyword actStatement mod module pointer set to type
hi link actCommand            Keyword
hi link actCommandArg         Constant


" Conditionals
syn keyword actConditional if fi else elseif
syn keyword actOperator and lsh or rsh xor
syn keyword actRepeat do exit for od return step then until while

" Functions
syn keyword actFunction func proc



hi link actBatchConditional   Conditional
hi link actBatchOperator      Operator
hi link actBatchRepeat        Repeat
hi link actBatchFunction      Function


" Comments
" - this next line prevents the comment delimiter from being highlighted
"syn match actComment		   ";.*"hs=s+1 contains=actTodo
" - but this way is mo bettah
syn keyword actTodo	contained todo fixme xxx warning danger note notice bug
hi link actTodo               Todo

syn match actComment		   ";.*" contains=actTodo
hi link actComment	         Comment


syn match actLabel 	      ":\w*"
hi link actLabel	            Label
syn match actCommandArg  	"\/\w"


syn match actPositionalParam "%\d"
syn match actSpecialChar ">>"
syn match actSpecialChar "<<"
syn match actSpecialChar "|"
syn match actSpecialChar "-"
hi link actSpecialChar        Special

" The default methods for highlighting.  Can be overridden later
let b:current_syntax = "action"

