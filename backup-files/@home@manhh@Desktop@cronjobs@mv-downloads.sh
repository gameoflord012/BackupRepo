#!/bin/bash

FOLDER=`date "+%Y-%m-%d"`
cd $HOME/Downloads
echo moving donloads file to folder $FOLDER
mkdir -p $FOLDER

IFS=$'\n'
FILES=$(find . -maxdepth 1 -type f)
for _file in $FILES
do
	echo $_file
	mv $_file $FOLDER
done

