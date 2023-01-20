#!/bin/bash
echo Baresei adade aval:1  baresi KMM:2  
read adad
if [ $adad -eq 1 ]
then
	echo adad ra vared konid:
	read a
	m=$a
	while [ $m -ne 2 ]
	do
		m=`expr $m - 1` 
		x=`expr $a % $m`
		if [ $x -eq 0 ]
		then
			echo adad aval nist
			break
		fi
	done	
	if [ $m -eq 2 ]
	then
		echo adad aval hast
	fi
	echo do you want to continue?[y/n]
	read z
	if [ $z == "y" ]
	then
	bash calculator.sh
	fi	
		
fi

if [ $adad -eq 2 ]
then
	echo 2 adad vared konid va adade kochektar ra aval vared konid
	read c d
	m=$c
	while [ $m -ne 1 ]
	do
		x=`expr $c % $m`
		y=`expr $d % $m`
	       if [ $x -eq 0 -a $y -eq 0 ]
	       then
		       gcd=$m
		       break
	       fi
	       m=`expr $m - 1`
	       gcd=$m

       done
       g=`expr  $c \* $d`
       KMM=`expr $g / $gcd`
       
	       echo kmm is $KMM
        echo do you want to continue?[y/n]
        read z
        if [ $z == "y" ]
        then
        bash calculator.sh
        fi

fi

