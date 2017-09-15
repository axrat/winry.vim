let s:save_cpo = &cpo
set cpo&vim

function! winry#toggle(line)
  if a:line =~ '^"*\s*\[x\]'
    call setline('.', substitute(a:line, '\[x\]', '[ ]', ''))
  else
    call setline('.', substitute(a:line, '\[ \]', '[x]', ''))
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

