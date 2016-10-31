setlocal tabstop=8 softtabstop=4 shiftwidth=4
nnoremap <buffer> <F11> :!python %<cr>
nnoremap <buffer> <C-F11> :w<cr>:!python %<cr>

function! IsMatchNeedColonLine()
  if match(getline("."), '\v^\s*(class|def|if|else|for|while|try|except)') >= 0
    return 1
  else
    return 0
  endif
endfunction
inoremap <buffer><expr> : IsMatchNeedColonLine() ? "<C-O>$:<cr>" : ":"

";で改行
inoremap <buffer> ; <cr>
inoremap <buffer> <M-;> ;

