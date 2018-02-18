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



"Winry
function! winry#test()
source "/home/onoie/.vim/dein/repos/github.com/onoie/winry.vim/plugin/winry.vim"
endfunction
command! -nargs=0 W call winry#test()
function! winry#winry()
echo strftime('Winry@%Y%m%d%H%M%S')
endfunction
command! -nargs=0 Winry call winry#winry()
command! -nargs=0 WinryHello call winry#hello()
command! -nargs=0 WinryHelloPython call winry#hello_python()
command! -nargs=0 WinryTabToSpace call winry#tab2space()
command! -nargs=0 WinrySpaceToTab call winry#space2tab()
command! -nargs=0 WinryToggle call winry#toggle(getline("."))
command! -nargs=0 WinryUnToggle call winry#untoggle(getline("."))



let &cpo = s:save_cpo
unlet s:save_cpo
