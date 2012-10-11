#! /bin/bash

BASE=.dotfiles
CURRENT=$BASE/current
BACKUP=$BASE/backup
ACTIVE=$BASE/active

cd ~

mkdir -p $CURRENT
mkdir -p $ACTIVE

for FILE in $ACTIVE/*; 
do
	NAME=$(basename $FILE)
	DOTNAME=.$NAME;
	if [ -e $DOTNAME ] 
	then
		if [ -L $DOTNAME ] 
		then
			# Remove any existing symbolic link
			#echo "rm ~/.DOTNAME";
			rm $DOTNAME
		else
			echo "backing up $DOTNAME";
			# A regular file, so make a backup
			#echo "cp -r $DOTNAME $BACKUP";
			rsync -r $DOTNAME $BACKUP/;
		fi
	fi

	# Copy from the active dir to current dir.
	# This prevents conflicts from breaking the config
	#echo "cp -r $FILE $CURRENT";
	cp -r $FILE $CURRENT

	# Make the link from home -> current
 	#echo "ln -fvs $CURRENT/$NAME ~/$DOTNAME";
 	ln -fs $CURRENT/$NAME ~/$DOTNAME; 
done

# 


