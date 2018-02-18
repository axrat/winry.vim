"=============================================================================
" File: winry.vim
" Author: onoie
" Created: 2018-02-18
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_winry')
		finish
endif
let g:loaded_winry = 1

let s:save_cpo = &cpo
set cpo&vim



function! winry#hello()
	echo "Hello,World!"
endfunction
function! winry#hello_python()
python << PYTHON
print "HelloPython"
PYTHON
endfunction
function! winry#tab2space()
	execut 'set expandtab'
	execut 'retab!'
endfunction
function! winry#space2tab()
	execut 'set noexpandtab'
	execut 'retab!'
endfunction
function! winry#toggle(line)
	call setline('.', substitute(a:line, '\[ \]', '\[x\]', ''))
endfunction
function! winry#untoggle(line)
"	if a:line =~ '^"*\s*\[x\]'
		call setline('.', substitute(a:line, '\[x\]', '[ ]', ''))
"	endif
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
