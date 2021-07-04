#!/bin/bash -x
#created by : Mr. Omkar G Bapat

echo " Welcome to Employee Wage Computation Program "

#UC1 : Checking employee attendance

ispresent=1

randomCheck=$((RANDOM%2))

if [ $ispresent -eq $randomCheck ]
then
	echo " Employee is present. "
else
	echo " Employee is absent. "
fi
