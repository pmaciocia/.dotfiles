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

for FILE in $ACTIVE/*; 
do
	NAME=$(basename $FILE)
	DOTNAME=.$(basename $FILE);
	if [ -e $DOTNAME ] 
	then
		echo "backing up $DOTNAME";
		#echo "cp -r $DOTNAME $BACKUP";
		cp -r $DOTNAME $BACKUP/;
	fi

	#echo "cp -r $FILE $CURRENT"; 
	cp -r $FILE $CURRENT
	if [ -L ~/$DOTNAME ] 
	then
		#echo "rm ~/.DOTNAME";
		rm ~/$DOTNAME
	fi

 	#echo "ln -fvs $CURRENT/$NAME ~/$DOTNAME";
 	ln -fs $CURRENT/$NAME ~/$DOTNAME; 
done

# 


