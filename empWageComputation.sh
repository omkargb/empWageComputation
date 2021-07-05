# !/bin/bash -x
#created by : Mr. Omkar G Bapat

printf " Welcome to Employee Wage Computation Program \n"

wagePerHr=20

isFullTime=2
isPartTime=1
# default : isAbsent=0
monthSalary=0
workingDays=20

echo " [ Checking employee attendance and calculating a month's salary ] "

for (( day=1; day<=$workingDays; day++ ))
do
    randomCheck=$((RANDOM%3));
	case $randomCheck in
	$isFullTime)	# echo " Employee is present Full Time. "
			workHrs=8
			;;
	$isPartTime)	# echo " Employee is present Part Time. "
			workHrs=4
			;;
	*)		# echo " Employee is absent. "
        		workHrs=0
			;;
	esac

    salary=$(($wagePerHr*$workHrs));
    monthSalary=$(($salary+$monthSalary));
done

echo " 1 Month's Salary : $monthSalary"
