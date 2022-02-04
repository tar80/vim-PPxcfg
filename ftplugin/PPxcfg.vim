" Vim filetype plugin file
" Language:         PPx Configuration File
" Maintainer:       tar80
" Latest Revision:  2019-1-14

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl cms< fo<"
setlocal commentstring=;%s formatoptions-=t formatoptions+=clj

let &cpo = s:cpo_save
unlet s:cpo_save
