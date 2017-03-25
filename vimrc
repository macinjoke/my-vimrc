"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

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
" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'
" 括弧周りの入力補助
NeoBundle 'kana/vim-smartinput'
" コマンド結果をバッファーに出力
NeoBundle 'tyru/capture.vim'
" unite-sourceを元にインタフェースを操作する
NeoBundle 'Shougo/unite.vim'
" Twitterプラグイン
NeoBundle 'TwitVim'
" Processingプラグイン
NeoBundle 'sophacles/vim-processing'

NeoBundle 'eagletmt/ghcmod-vim'

NeoBundle 'Shougo/vimproc.vim.git'

NeoBundle 'deris/vim-duzzle'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"augroup の削除
augroup myvimrc
  autocmd!
augroup END

"set option
set runtimepath+=~/.vim/
runtime! userautoload/*.vim
set number
set mouse=a
set backspace=indent,eol,start
set whichwrap=b,s,[,],~
set scrolloff=10
set sidescrolloff=16
set wildmenu wildmode=list
syntax on
set hlsearch
set cursorline
set laststatus=1
set statusline=%F%r%=%p
""encoding config
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
""indent config
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"set clipboard=unnamedplus,autoselect
set clipboard+=unnamed

"削除でコピーしないように
nnoremap x "_x
vnoremap x "_x
nnoremap D "_D
"コピーしたいとき用に
nnoremap yD D

set directory=~/.vim/swp

"改行
inoremap <S-cr> <Esc>o
inoremap <C-S-cr> <Esc>O

"Emacs風横移動
inoremap <C-f> <Right>
inoremap <C-b> <Left>

"ヴィジュアルモード時にスペースでコピー
vnoremap <Space> y

""ナビゲーションマッピング
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT
nnoremap <C-S-l> :<C-u>tabm+1<cr>
nnoremap <C-S-h> :<C-u>tabm-1<cr>
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> :<C-u>tablast<cr>

""load vimrc
nnoremap <F5> :<C-u>so $MYVIMRC<cr>:so $MYGVIMRC<cr>
""open vimrc
nnoremap <F6> :<C-u>tabe $MYVIMRC<cr>
""open help
nnoremap <F1> :tab h<cr>
"クリップボードからペースト
nnoremap <Insert> "*p

"cnoremap ; <cr>
"cnoremap <C-m> ;

"行末スペースをハイライトで可視化
autocmd myvimrc VimEnter,WinEnter * match Error /\s\+$/
"行末スペースを保存時に取り除く
autocmd myvimrc BufWritePre * %s/\s\+$//e

