#!/bin/bash
echo enter your file name:
read file1
echo enter your word:
read word1
grep -v "$word1" $file1 > tmpfile && mv tmpfile $file1
cat $file1

