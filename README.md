# winry
`:Winry`
カーソル行のTODO[]/[x]を切り替えるやつ
  
### Note
* reload
  * vim->:source ~/.vimrc
  * vim.:source %
  
## Reference
* http://kannokanno.hatenablog.com/entry/20120403/1333462565
  
```
function! s:Swap(line)
  if a:line =~ '^"*\s*\[x\]'
    " Undone
    call setline('.', substitute(a:line, '\[x\]', '[ ]', ''))
  else
    " Done
    call setline('.', substitute(a:line, '\[ \]', '[x]', ''))
  endif
endfunction
command! -nargs=0 Winry call s:Swap(getline("."))
```
