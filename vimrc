set runtimepath+=~/.vim/
runtime! userautoload/*.vim
set number
set mouse=a
set backspace=indent
set whichwrap=b,s,[,],~
set wildmenu wildmode=list
syntax on
set hlsearch
set cursorline
set laststatus=1
set statusline=%F%r%=%p
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,ecu-jp
"indent config
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

nnoremap ; :
nnoremap <F11> :!ruby %<cr>
nnoremap <C-F11> :w<cr>:!ruby %<cr>
