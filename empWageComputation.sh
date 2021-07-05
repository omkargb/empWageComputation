# !/bin/bash -x
#created by : Mr. Omkar G Bapat

echo " Welcome to Employee Wage Computation Program "

wagePerHr=20

isFullTime=2
isPartTime=1
# default : isAbsent=0

randomCheck=$((RANDOM%3))

echo " Checking employee attendance and calculating day salary "

case $randomvalue in
	$isFullTime)	echo " Employee is present Full Time. "
			workHrs=8
			;;
	$isPartTime)	echo " Employee is present Part Time. "
			workHrs=4
			;;
	*)		echo " Employee is absent. "
        		workHrs=0
			;;
esac

salary=$(($wagePerHr * $workHrs))

echo " Day Salary : $salary"
