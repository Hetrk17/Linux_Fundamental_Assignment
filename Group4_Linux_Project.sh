#!/bin/sh

#Count the +10Mb file
FILECOUNT=$(find -type f -size +10M | wc -l)

#Chack FILECOUNT is 0
if  [ $FILECOUNT -eq 0 ] 
then
	#if FILECOUNT is 0, then no file is there which is +10Mb
	 echo "No File found which is grater than 10Mb." 
else
	#Print total number of file
	echo "\nTotal Number of file:- $FILECOUNT\n"
	echo "\n\nFile With Path"
	#Print name of file with path
	find -type f -size +10M
	echo "\n\nList of File"
	#print list of file
	find -type f -size +10M -printf "%f\n"
fi

