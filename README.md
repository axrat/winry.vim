# winry.vim
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![](https://img.shields.io/badge/twitter-onoie3-brightgreen.svg)](https://twitter.com/onoie3)

## about
vim plugin test repository [WIP]

## installation for dein toml
```vim
[[plugins]]
repo = 'onoie/winry.vim'
```

## Usage
```vim
:Winry
"winry#winry()->Display "winry"
:WinryHello
"winry#hello()->Desplay "Hello,World!"
:WinryTabToSpace
"winry#tab2space()-> all tab to space in file
:WinrySpaceToTab
"winry#space2tab()-> all space to tab in file
:WinryToggle
"winry#toggle(getline("."))-> [x] markdown check
WinryUnToggle
"winry#untoggle(getline("."))-> [ ] markdown un check
```

## Author
onoie  
:email: onoie3@gmail.com
