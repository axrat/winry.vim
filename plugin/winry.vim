

if exists("g:loaded_winry")
  finish
endif
let g:loaded_winry = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 Winry call winry#toggle(getline("."))

let &cpo = s:save_cpo
unlet s:save_cpo

