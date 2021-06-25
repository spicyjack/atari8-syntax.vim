" Vim syntax file
" Language:	SpartaDOS X (used in batch Files)
" By: Brian Manning <devspam@xaoc.org>
" Creation date: 2021-June-14
" Version 0.01

" This file is based on:
" - Language:     MOS 6502 assembler
"   - https://www.vim.org/scripts/script.php?script_id=1314
" - Language:     MSDOS batch file (with NT command extensions)
"   - http://www.eandem.co.uk/mrw/vim
" 

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Remove any old syntax stuff hanging about
syn clear
" Ignore mixed case text
syn case ignore

" Commands 
" syn keyword {group name}
" - "group name" can be listed multiple times with different commands
" - commands can be members of multiple groups
" - https://vimhelp.org/syntax.txt.html#%3Asyn-define
syn keyword sdxCommand append arc atr attrib basic bload boot
syn keyword sdxCommand car chdir cd cwd chkdsk chtd chvol clr cls cold
syn keyword sdxCommand command comp con copy date deltree dev device
syn keyword sdxCommand df dir dirs dump echo ed erase del delete
syn keyword sdxCommand exit fdisk find fmt goto key
syn keyword sdxCommand less load man map mdump mem menu merge
syn keyword sdxCommand mkdir md credir more path pause peek poke
syn keyword sdxCommand prompt pwd rename ren rendir rmdir rd deldir
syn keyword sdxCommand rs232 save set setpaths sioset sortdir swap td
syn keyword sdxCommand unerase use ver verify x

" speshul case commands; you'd see these when using the LOAD command
syn keyword sdxCommand command.com x.com

" Highlighting
hi link sdxCommand            Keyword

" Conditionals
syn keyword sdxBatchConditional if exists error file inkey not else fi
syn keyword sdxBatchOperator nt ot ea lt st es
syn keyword sdxBatchRepeat for to in next

" Highlighting
hi link sdxBatchConditional   Conditional
hi link sdxBatchOperator      Operator
hi link sdxBatchRepeat        Repeat

" Batch file functions
syn keyword sdxBatchFunction proc return gosub
" Highlighting
hi link sdxBatchFunction      Function

" Comments
" - this next line prevents the comment delimiter from being highlighted
"syn match sdxComment		   ";.*"hs=s+1 contains=sdxTodo
" - but this way is mo bettah

syn keyword sdxTodo	contained todo fixme xxx warning danger note notice bug
syn match sdxComment		   ";.*" contains=sdxTodo
syn match sdxLabel 	      ":\w*"
syn match sdxCommandArg  	"\/\w"

" Highlighting
hi link sdxCommandArg         Constant
hi link sdxLabel	            Label
hi link sdxComment	         Comment
hi link sdxTodo               Todo

syn match sdxPositionalParam "%\d"
syn match sdxSpecialChar ">>"
syn match sdxSpecialChar "<<"
syn match sdxSpecialChar "|"
syn match sdxSpecialChar "-"

" Highlighting
hi link sdxSpecialChar        Special

let b:current_syntax = "spartadosx"

