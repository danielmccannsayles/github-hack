#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

filename='text.txt'
echo 'editing '$filename

#assign day of the week (1-7)
DOW=$(date +%u)
echo 'Day of the week is '$DOW

#remove last character(idk why but -2 works)
truncate -s -2 $filename

#add day of the week, effectively changing the file and causing the need for a github update
echo $DOW>>$filename

#add text.txt to what's going to be pushed - idk why i have to add vscode it told me to in terminal lol
git  add $filename
git  add githubhack.sh
git  add .vscode/

#create a commit
git  commit -m "first commit"

#push that commit
git  push -f test main
