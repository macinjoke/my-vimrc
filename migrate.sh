ln -s ~/.ghq/github.com/macinjoke/my-vimrc/vimrc ~/.vimrc
ln -s ~/.ghq/github.com/macinjoke/my-vimrc/ideavimrc ~/.ideavimrc
mkdir ~/.vim
mkdir ~/.vim/swp
ln -s ~/.ghq/github.com/macinjoke/my-vimrc/ftplugin ~/.vim/ftplugin

# neobundleのインストール
# もしかしたらinstall 方法が変わるかも 2020/4/15 https://github.com/Shougo/neobundle.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
rm ./install.sh

