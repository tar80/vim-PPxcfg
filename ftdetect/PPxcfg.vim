augroup filetypedetect
  autocmd BufNewFile,BufRead *.cfg call s:set_xcfg()
augroup END

function! s:set_xcfg() abort
  let shebang = strpart(getline(1), 0, 7)
  if shebang =~# 'PPxCFG\(\s\|\t\)'
    set filetype=PPxcfg
  endif
endfunction

