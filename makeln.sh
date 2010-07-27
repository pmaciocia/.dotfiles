#! /bin/bash

DOTFILES=~/.dotfiles
SCREEN=screenrc
VIM=vimrc
VIM_DIR=vim
BASH=bashrc
GIT=gitconfig

cd ~
ln -s $DOTFILES/$SCREEN .$SCREEN
ln -s $DOTFILES/$VIM .$VIMRC
ln -s $DOTFILES/$VIM_DIR .$VIM_DIR
ln -s $DOTFILES/$BASH .$BASHRC
ln -s $DOTFILES/$GIT .$GIT


