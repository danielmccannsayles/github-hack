#!/bin/sh
filename='text.txt'
echo 'editing '$filename

#assign day of the week (1-7)
DOW=$(date +%u)
echo 'Day of the week is '$DOW

#remove last character(idk why but -2 works)
truncate -s -2 $filename

#add day of the week, effectively changing the file and causing the need for a github update
echo $DOW>>$filename


