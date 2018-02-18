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
	echo "HelloWorld"
endfunction

function! winry#toggle(line)
  if a:line =~ '^"*\s*\[x\]'
    call setline('.', substitute(a:line, '\[x\]', '[ ]', ''))
  else
    call setline('.', substitute(a:line, '\[ \]', '[x]', ''))
  endif
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
