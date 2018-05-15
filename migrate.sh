ln -s ~/.ghq/github.com/macinjoke/my-vimrc/vimrc ~/.vimrc
ln -s ~/.ghq/github.com/macinjoke/my-vimrc/ideavimrc ~/.ideavimrc
mkdir ~/.vim
mkdir ~/.vim/swp
ln -s ~/.ghq/github.com/macinjoke/my-vimrc/ftplugin ~/.vim/ftplugin

# neobundleのインストール
# もしかしたらinstall 方法が変わるかも 2018/5/15
mkdir ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

