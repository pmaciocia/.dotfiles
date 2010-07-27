#! /bin/bash

DOTFILES=~/.dotfiles/active

cd ~

for f in $DOTFILES/*; 
do 
	#echo "ln -s $f .$(basename $f)"
	ln -s $f .$(basename $f); 
done



