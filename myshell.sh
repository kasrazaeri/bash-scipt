#!/bin/bash
echo write your file name which will be created and is used for copying directory contents in [.txt]
read a
touch $a
rm backupfile.txt
sleep 2
./mylist
echo write the first file name : backupfile.txt which you have made it in question 5
echo write the second file name which you wrote for the top question which was empty file.txt
./mycopy
b= wc -l $a






