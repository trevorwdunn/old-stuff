#!/bin/bash

mkdir -p ~/.vim/plugged

cp ~/.vimrc backup_vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "call plug#begin('~/.vim/plugged')" > ~/.vimrc
echo "Plug 'vim-airline/vim-airline'" >> ~/.vimrc
echo "call plug#end()" >> ~/.vimrc

