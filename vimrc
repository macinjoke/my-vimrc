"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/shunji/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/shunji/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

"NeoBundle setting
""ファイルのツリー表示
NeoBundle 'scrooloose/nerdtree'
""Ruby向けのend自動入力
NeoBundle 'tpope/vim-endwise'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
"let g:indent_guides_enable_on_vim_startup = 1

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


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

"mapping config
""セミコロンをコロンに
nnoremap ; :
""[Ctrl+]F11でrubyとpythonを[保存]実行
autocmd BufNewFile,BufRead *.rb nnoremap <F11> :!ruby %<cr>
autocmd BufNewFile,BufRead *.rb nnoremap <C-F11> :w<cr>:!ruby %<cr>
autocmd BufNewFile,BufRead *.py nnoremap <F11> :!python %<cr>
autocmd BufNewFile,BufRead *.py nnoremap <C-F11> :w<cr>:!python %<cr>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>

inoremap <S-cr> <Esc>o
inoremap <C-S-cr> <Esc>O

