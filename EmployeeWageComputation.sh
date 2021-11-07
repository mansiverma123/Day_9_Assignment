#!/bin/bash -x

EmpRatePerHour=20;
NumOfWorkingDays=20;
FullDayHour=8;
PartTimeHour=4;
Salary=0;
isFullTime=1;
isPartTime=1;
totalSalary=0;

for (( day=1; day<=$NumOfWorkingDays; day++))
do
	randomCheck=$((RANDOM%3))

   case $randomCheck in
		$isFullTime)
		empHrs=8
		;;
		*)
		$isPartTime
		empHrs=4
		;;
   esac

Salary=$(($EmpRatePerHour*$empHrs));
totalSalary=$(($totalSalary+$Salary));

done
echo "Monthly Salary=" $totalSalary

