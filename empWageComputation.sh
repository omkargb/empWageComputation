# !/bin/bash -x
#created by : Mr. Omkar G Bapat

printf " Welcome to Employee Wage Computation Program \n"

isFullTime=2
isPartTime=1
# default : isAbsent=0
monthSalary=0

wagePerHr=20
maxWorkingDays=20
maxWorkingHrs=100

totalEmpHrs=0
totalWorkingDays=0

#dictionary for storing day, daily wage
declare -A dailyWage

echo " [ Checking employee attendance and calculating a month's total wage ] "

function getWorkHours()
{
	case $1 in
		$isFullTime)	workHrs=8
				;;
		$isPartTime)	workHrs=4
				;;
		*)		workHrs=0
				;;
	esac
	echo $workHrs
}

#checking the conditions : max working hours or max working days is reached
while [ $totalEmpHrs -lt $maxWorkingHrs ] && [ $totalWorkingDays -lt $maxWorkingDays ]
do
    randomCheck=$((RANDOM%3));
    workHrs=$( getWorkHours $randomCheck )
    totalEmpHrs=$(($workHrs+$totalEmpHrs));

    dayWage=$(($workHrs*$wagePerHr))
    dailyWage["Day$totalWorkingDays"]="Rs$dayWage"

    ((totalWorkingDays++))
done

for value in ${!dailyWage[@]}
do
	echo " $value = ${dailyWage[$value]} "
done

monthSalary=$(($wagePerHr*$totalEmpHrs));

echo " Total wage : $monthSalary "
