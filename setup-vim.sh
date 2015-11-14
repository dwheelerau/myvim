#!/usr/bin
#!!!don't run as sudo!!!!
#prereq
#(Ubuntu)
#sudo apt-get install mercurial
#sudo pip install ipdb
#sudo pip install jedi
#sudo apt-get build-dep vim
#sudo apt-get install curl

#clone my .vimrc
#git clone https://github.com/dwheelerau/myvim
#cp $HOME/Desktop/myvim/vimrc $HOME/.vimrc
#add the following to your .bashrc if not allready there and log out

#if [ -d $HOME/bin ]; then
#PATH=$PATH:$HOME/bin
#fi

cd $HOME/Desktop 

mkdir -p $HOME/bin
mkdir -p $HOME/opt

hg clone https://vim.googlecode.com/hg/ vim
cd vim/src

./configure --enable-pythoninterp --with-features=huge --prefix=$HOME/opt/vim
make && make install
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
which vim
vim --version

#on ubuntu
sudo apt-get install gtk2-engines-pixbuf

#install wombat colour scheme
mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#install powerline plugin
cd  ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git

#install ctrlp
git clone https://github.com/kien/ctrlp.vim.git
#install jedi plugin
git clone --recursive https://github.com/davidhalter/jedi-vim.git

#install  syntastic
git clone https://github.com/scrooloose/syntastic.git

