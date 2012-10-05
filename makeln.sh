#! /bin/bash

BASE=.dotfiles
CURRENT=$BASE/current
BACKUP=$BASE/backup
ACTIVE=$BASE/active

cd ~

if [ ! -d "$BACKUP" ]
then
	mkdir $BACKUP
fi

if [ ! -d "$CURRENT" ]
then
	mkdir $CURRENT
fi

for f in $ACTIVE/*; 
do
	NAME=$(basename $f)
	DOTNAME=.$(basename $f);
	if [ -f $DOTNAME ] 
	then
		echo "backing up $DOTNAME";
		cp $DOTNAME $BACKUP/;
	fi

	cp -r $f $CURRENT;
	if [ -L "~/$DOTNAME" ] 
	then
		rm ~/.DOTNAME
	fi

 	ln -fvs $CURRENT/$NAME ~/$DOTNAME; 
done

# 


