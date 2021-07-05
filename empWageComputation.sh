# !/bin/bash -x
#created by : Mr. Omkar G Bapat

echo " Welcome to Employee Wage Computation Program "

wagePerHr=20

isFullTime=2
isPartTime=1
isAbsent=0

randomCheck=$((RANDOM%3))

echo " Checking employee attendance and calculating day salary "

if [ $isFullTime -eq $randomCheck ]
then
	echo " Employee is present Full Time. "
	workHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	echo " Employee is present Part Time. "
	workHrs=4
else
        echo " Employee is absent. "
        workHrs=0
fi

salary=$(($wagePerHr * $workHrs))

echo " Day Salary : $salary"
