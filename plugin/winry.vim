"=============================================================================
" File: winry.vim
" Author: onoie
" Created: 2018-02-18
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_winry')
    finish
endif
let g:loaded_winry = 1

let s:save_cpo = &cpo
set cpo&vim



command! -nargs=0 Winry call winry#hello()
command! -nargs=0 WinryToggle call winry#toggle(getline("."))



let &cpo = s:save_cpo
unlet s:save_cpo
