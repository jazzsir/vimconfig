#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
	echo "warning: delete ~/.vim/ and ~/.vimrc"
	exit
fi

echo "create symbolic link..."
ln -sfv ~/vimconfig/vimrc ~/.vimrc

echo "vundle downloading..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "install plugins by hbseo"
mkdir ~/.vim/autoload/
cp autoload/* ~/.vim/autoload/

echo "vundle installing..."
vim -c :BundleInstall -c :qa
