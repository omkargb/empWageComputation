#!/bin/bash -x
#created by : Mr. Omkar G Bapat

echo " Welcome to Employee Wage Computation Program "

ispresent=1
workHrs=8
wagePerHr=20

randomCheck=$((RANDOM%2))

if [ $ispresent -eq $randomCheck ]
then
	echo " Employee is present. "
	salary=$(($wagePerHr * $workHrs))
else
	echo " Employee is absent. "
	salary=0
fi
