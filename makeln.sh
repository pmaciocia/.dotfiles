#! /bin/bash

DOTFILES=~/.dotfiles/active
BACKUP=~/.dotfiles/backup

cd ~

for f in $DOTFILES/*; 
do
	DOTNAME=.$(basename $f);
	if [ -f $DOTNAME ] 
	then
		echo "backing up $DOTNAME";
		cp $DOTNAME $BACKUP/;
	fi

	ln -fs $f $DOTNAME; 
done



