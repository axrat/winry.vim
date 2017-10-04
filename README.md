# Winry
`:Winry`
## About
 vim plugin test repository [WIP]
## Todo
 * [x] カーソル行のTODO `[ ] / [x]`を切り替える
 * [ ] vimrcからbashを実行する
  
### Note
* reload
  * vim->:source ~/.vimrc
  * vim.:source %
  
space(2) to tab
```
:set noexpandtab
:retab!
```
tab to space(2)
```
:set expandtab
:retab
```
 
### Install for Dein toml
```
#~/.dein_lazy.toml
[[plugins]]
repo = 'onoie/winry.vim'
```
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
